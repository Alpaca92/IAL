import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import prisma from '../lib/prisma.js';

export const register = async (req, res) => {
  const { username, email, password } = req.body;

  try {
    const hashedPassword = await bcrypt.hash(password, 10);

    const newUser = await prisma.user.create({
      data: {
        username,
        email,
        password: hashedPassword,
      },
    });

    return res.status(201).json({ message: 'User created successfully' });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ message: 'Failed to create user' });
  }
};

export const login = async (req, res) => {
  const { username, password } = req.body;

  try {
    // NOTE check if the user exists
    const user = await prisma.user.findUnique({
      where: {
        username,
      },
    });

    if (!user) {
      return res.status(401).json({ message: 'Invalid Credentials' });
    }

    const isPasswrordValid = await bcrypt.compare(password, user.password);

    // NOTE check if the password is correct
    if (!isPasswrordValid) {
      return res.status(401).json({ message: 'Invalid Credentials' });
    }

    // NOTE generate cookie token and send it to the user
    const age = 1000 * 24 * 60 * 60 * 7; // NOTE 7 day
    const token = jwt.sign(
      {
        id: user.id,
      },
      process.env.JWT_SECRET_KEY,
      {
        expiresIn: age,
      },
    );

    res
      .cookie('token', token, {
        httpOnly: true,
        // secure: true, // NOTE only for https
        maxAge: age,
      })
      .status(200)
      .json({ message: 'Logged in successfully' });
  } catch (error) {
    console.log(error);
    return res.status(500).json({ message: 'Failed to login' });
  }
};

export const logout = (req, res) => {
  res.clearCookie('token').json({ message: 'Logged out successfully' });
};

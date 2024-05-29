import { useState } from 'react';
import { useAddUserMutation } from '../RTK/userAPI';
import { useNavigate } from 'react-router-dom';

function CreateUser() {
  const navigate = useNavigate();
  const [addUser] = useAddUserMutation();
  const [user, setUser] = useState({});

  const handleChange = (event) => {
    setUser({ ...user, [event.target.name]: event.target.value });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    await addUser(user);
    navigate('/');
  };

  return (
    <div className='d-flex justify-content-center mt-5'>
      <form
        className='border border-2 border-dark p-3'
        onSubmit={handleSubmit}>
        <h3>Add User</h3>
        <div className='mb-3 mt-3'>
          <label
            htmlFor='name'
            className='form-label'>
            Name:
          </label>
          <input
            type='name'
            className='form-control'
            id='name'
            placeholder='Enter name'
            name='name'
            onChange={handleChange}
          />
        </div>
        <div className='mb-3 mt-3'>
          <label
            htmlFor='email'
            className='form-label'>
            Email:
          </label>
          <input
            type='email'
            className='form-control'
            id='email'
            placeholder='Enter email'
            name='email'
            onChange={handleChange}
          />
        </div>
        <button
          type='submit'
          className='btn btn-primary'>
          Submit
        </button>
      </form>
    </div>
  );
}

export default CreateUser;

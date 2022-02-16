import express from "express";
import http from "http";
import { Server } from "socket.io";
import { instrument } from "@socket.io/admin-ui";

const app = express();
const server = http.createServer(app);
const io = new Server(server, {
  cors: {
    origin: ["https://admin.socket.io"],
    credentials: true,
  },
});

instrument(io, {
  auth: false,
});

app.set("view engine", "pug");
app.set("views", __dirname + "/views");
app.use("/public", express.static(__dirname + "/public"));

app.get("/", (_, res) => res.render("home"));
app.get("/*", (_, res) => res.redirect("/"));

function publicRooms() {
  const {
    sockets: {
      adapter: { sids, rooms },
    },
  } = io;

  const publicRooms = [];

  rooms.forEach((_, key) =>
    sids.get(key) === undefined ? publicRooms.push(key) : null
  );

  return publicRooms;
}

function countRoom(roomName) {
  return io.sockets.adapter.rooms.get(roomName)?.size;
}

io.on("connection", (socket) => {
  socket.onAny((event) => {
    console.log(`💡Socket Event: ${event}`);
  });

  socket.nickname = "anonymous";

  socket.on("enter_room", (roomName, showRoom) => {
    socket.join(roomName);
    showRoom();
    socket.to(roomName).emit("welcome", socket.nickname, countRoom(roomName));

    io.sockets.emit("room_change", publicRooms());
  });

  socket.on("nickname", (nickname) => {
    socket.nickname = nickname;
  });

  socket.on("new_message", (message, roomName, done) => {
    socket.to(roomName).emit("new_message", `${socket.nickname}: ${message}`);
    done();
  });

  socket.on("disconnecting", () => {
    socket.rooms.forEach((room) =>
      socket.to(room).emit("bye", socket.nickname, countRoom(room) - 1)
    );
  });

  socket.on("disconnect", () => {
    io.sockets.emit("room_change", publicRooms());
  });
});

server.listen(5000, () => console.log("✔ URL: http://localhost:5000"));

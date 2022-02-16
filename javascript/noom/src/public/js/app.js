const socket = io();

const welcome = document.querySelector("#welcome");
const form = welcome.querySelector("form");
const room = document.querySelector("#room");

room.hidden = true;
let roomName = "";

function addMessage(message) {
  const ul = room.querySelector("ul");
  const li = document.createElement("li");
  li.innerText = message;
  ul.append(li);
}

form.addEventListener("submit", (event) => {
  event.preventDefault();
  const input = form.querySelector("input");

  socket.emit("enter_room", input.value, () => {
    room.hidden = false;
    welcome.hidden = true;

    const h3 = room.querySelector("h3");
    h3.innerText = `Room: ${roomName}`;

    const nameForm = room.querySelector("#name");
    const messageForm = room.querySelector("#message");

    nameForm.addEventListener("submit", (event) => {
      event.preventDefault();
      const input = nameForm.querySelector("input");

      socket.emit("nickname", input.value);

      input.value = "";
    });

    messageForm.addEventListener("submit", (event) => {
      event.preventDefault();
      const input = messageForm.querySelector("input");
      const { value } = input;

      socket.emit("new_message", value, roomName, () =>
        addMessage(`You: ${value}`)
      );

      input.value = "";
    });
  });

  roomName = input.value;
  input.value = "";
});

socket.on("welcome", (nickname, newCount) => {
  const h3 = room.querySelector("h3");
  h3.innerText = `Room ${roomName} (${newCount})`;
  addMessage(`${nickname} joined !`);
});

socket.on("new_message", addMessage);

socket.on("bye", (nickname, newCount) => {
  const h3 = room.querySelector("h3");
  h3.innerText = `Room ${roomName} (${newCount})`;
  addMessage(`${nickname} left !`);
});

socket.on("room_change", (rooms) => {
  const roomList = welcome.querySelector("ul");
  roomList.innerHTML = "";

  if (rooms.length === 0) {
    return;
  }

  rooms.forEach((room) => {
    const li = document.createElement("li");
    li.innerText = room;
    roomList.append(li);
  });
});

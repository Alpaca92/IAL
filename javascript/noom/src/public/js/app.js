const socket = new WebSocket(`ws://${window.location.host}`);
const messageList = document.querySelector("ul");
const messageForm = document.querySelector("form");

socket.addEventListener("open", () => console.log("Connected to server"));
socket.addEventListener("message", async (message) => {
  console.log(await message.data.text());
});
socket.addEventListener("close", () => console.log("Disconnected from server"));

messageForm.addEventListener("submit", (event) => {
  event.preventDefault();

  const input = messageForm.querySelector("input");
  socket.send(input.value);
  input.value = "";
});

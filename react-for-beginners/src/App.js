import { useState } from "react";

function App() {
  const [toDos, setToDos] = useState([]);
  const [toDo, setToDo] = useState("");

  const onChange = (event) => setToDo((prev) => event.target.value);
  const onSubmit = (event) => {
    event.preventDefault();

    if (!toDo) return;

    setToDos((currentArray) => [toDo, ...currentArray]);
    setToDo((prev) => "");
  };

  console.log(`toDo: ${toDo}, toDos: ${toDos}`);

  return (
    <>
      <h1>Today To-Do List ({toDos.length})</h1>
      <form onSubmit={onSubmit}>
        <input
          onChange={onChange}
          value={toDo}
          type="text"
          placeholder="write your to do"
        />
        <button>Add To Do</button>
      </form>
      <hr />
      <ul>
        {toDos.map((toDo, idx) => (
          <li key={idx}>{toDo}</li>
        ))}
      </ul>
    </>
  );
}

export default App;

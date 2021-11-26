import styles from "./App.module.css";
import { useState, useEffect } from "react";

function App() {
  const [counter, setCounter] = useState(0);
  const [keyword, setKeyword] = useState("");

  const onClick = () => setCounter((prev) => prev + 1);
  const onChange = (event) => setKeyword(event.target.value);

  useEffect(() => console.log("i run only once."), []);
  useEffect(() => console.log(`i run when 'keyword' changes.`), [keyword]);
  useEffect(() => console.log(`i run when 'counter' changes.`), [counter]);
  return (
    <>
      <input onChange={onChange} type="text" placeholder="Search here" />
      <h1 className={styles.title}>{counter}</h1>
      <button onClick={onClick}>click me</button>
    </>
  );
}

export default App;

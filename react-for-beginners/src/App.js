import styles from "./App.module.css";
import { useState, useEffect } from "react";

function App() {
  const [counter, setCounter] = useState(0);
  const onClick = () => setCounter((prev) => prev + 1);
  console.log("i run all the time");
  const iRunOnlyOnce = () => {
    console.log("i run only once.");
  };
  useEffect(iRunOnlyOnce, []);

  return (
    <>
      <h1 className={styles.title}>{counter}</h1>
      <button onClick={onClick}>click me</button>
    </>
  );
}

export default App;

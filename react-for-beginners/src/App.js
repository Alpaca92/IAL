import Button from "./Button";
import styles from "./App.module.css";
import { useState } from "react";

function App() {
  const [counter, setCounter] = useState(0);
  const onClick = () => setCounter((prev) => console.log(prev));

  return (
    <>
      <h1 className={styles.title}>{counter}</h1>
      <Button onClick= text={"click me"} />
    </>
  );
}

export default App;

import { onAuthStateChanged } from "firebase/auth";
import { auth } from "firebaseInstance";
import { useEffect, useState } from "react";
import Router from "./Router";

function App() {
  const [init, setInit] = useState(false);
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  useEffect(() => {
    onAuthStateChanged(auth, (user) => {
      if (user) {
        setIsLoggedIn(true);
      } else {
        setIsLoggedIn(false);
      }
      setInit(true);
    });
  }, []);

  return <>{init ? <Router isLoggedIn={isLoggedIn} /> : "initializing..."}</>;
}

export default App;


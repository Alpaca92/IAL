import { onAuthStateChanged } from "firebase/auth";
import { authService } from "firebaseInstance";
import { useEffect, useState } from "react";
import Router from "./Router";

function App() {
  const [init, setInit] = useState(false);
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  console.log(authService);

  useEffect(() => {
    onAuthStateChanged(authService, (user) => {
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

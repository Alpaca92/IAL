import { authService } from "firebaseInstance";
import { useState } from "react";
import Router from "./Router";

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(authService.currentUser);

  return <Router isLoggedIn={isLoggedIn} />;
}

export default App;

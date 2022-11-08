import Auth from "@routes/Auth";
import Home from "@routes/Home";
import { useState } from "react";
import { HashRouter, Route, Routes } from "react-router-dom";

const Router = () => {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  return (
    <HashRouter>
      <Routes>
        <Route path="/" element={isLoggedIn ? <Home /> : <Auth />} />
      </Routes>
    </HashRouter>
  );
};

export default Router;

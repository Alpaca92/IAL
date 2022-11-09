import Auth from "@routes/Auth";
import Home from "@routes/Home";
import { HashRouter, Route, Routes } from "react-router-dom";

const Router = ({ isLoggedIn }) => {
  return (
    <HashRouter>
      <Routes>
        <Route path="/" element={isLoggedIn ? <Home /> : <Auth />} />
      </Routes>
    </HashRouter>
  );
};

export default Router;

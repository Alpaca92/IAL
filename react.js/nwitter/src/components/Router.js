import Navigation from "@components/Navigation";
import Auth from "@routes/Auth";
import Home from "@routes/Home";
import Profile from "@routes/Profile";
import { HashRouter, Route, Routes } from "react-router-dom";

const Router = ({ isLoggedIn }) => {
  return (
    <HashRouter>
      {isLoggedIn && <Navigation />}
      <Routes>
        <Route path="/" element={isLoggedIn ? <Home /> : <Auth />} />
        <Route path="/profile" element={<Profile />} />
      </Routes>
    </HashRouter>
  );
};

export default Router;

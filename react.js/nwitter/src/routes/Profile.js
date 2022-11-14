import { signOut } from "firebase/auth";
import { auth } from "firebaseInstance";
import { useNavigate } from "react-router-dom";

const Profile = () => {
  const navigate = useNavigate();
  const onLogoutClick = async () => {
    await signOut(auth);
    navigate("/", { replace: true });
  };

  return (
    <>
      <button onClick={onLogoutClick}>Log Out</button>
    </>
  );
};

export default Profile;

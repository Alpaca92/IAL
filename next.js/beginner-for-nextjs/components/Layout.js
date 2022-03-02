import NavBar from "./NavBar";

export default function Layout({ children }) {
  return (
    <>
      <NavBar />
      <dv>{children}</dv>
    </>
  );
}

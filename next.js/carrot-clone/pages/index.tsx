import type { NextPage } from "next";

const Home: NextPage = () => {
  return (
    <div className="flex flex-col space-y-2 p-5">
      <input
        type="file"
        className="file:cursor-pointer file:rounded-md file:border-0 file:bg-purple-400 file:transition-colors file:hover:text-white"
      />
    </div>
  );
};

export default Home;

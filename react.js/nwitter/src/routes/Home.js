import { addDoc, collection } from "firebase/firestore";
import { db } from "firebaseInstance";
import { useState } from "react";

const Home = () => {
  const [nweet, setNweet] = useState("");
  const onSubmit = async (event) => {
    event.preventDefault();

    const collectionRef = collection(db, "nweets");
    const docRef = await addDoc(collectionRef, {
      nweet,
      createdAt: Date.now(),
    });

    setNweet("");
  };

  const onChange = (event) => {
    const {
      target: { value },
    } = event;

    setNweet(value);
  };

  return (
    <div>
      <form onSubmit={onSubmit}>
        <input
          onChange={onChange}
          value={nweet}
          type="text"
          placeholder="what's on your mind?"
          maxLength={120}
        />
        <input type="submit" value="Nweet" />
      </form>
    </div>
  );
};

export default Home;

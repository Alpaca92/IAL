import { addDoc, collection, getDocs, query } from "firebase/firestore";
import { db } from "firebaseInstance";
import { useEffect, useState } from "react";

const Home = ({ userObj }) => {
  const [nweet, setNweet] = useState("");
  const [nweets, setNweets] = useState([]);

  // #3.3 Realtime Nweets 07:07~
  const getNweets = async () => {
    const firebaseQuery = query(collection(db, "nweets"));
    const querySnapshot = await getDocs(firebaseQuery);

    querySnapshot.forEach((document) => {
      const nweetObject = {
        ...document.data(),
        id: document.id,
      };

      setNweets((prev) => [nweetObject, ...prev]);
    });
  };

  useEffect(() => {
    getNweets();
  }, []);

  const onSubmit = async (event) => {
    event.preventDefault();

    const collectionRef = collection(db, "nweets");

    await addDoc(collectionRef, {
      text: nweet,
      createdAt: Date.now(),
      creatorId: userObj.uid,
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
      <ul>
        {nweets.map((nweet) => (
          <li key={nweet.id}>
            <h4>{nweet.text}</h4>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Home;

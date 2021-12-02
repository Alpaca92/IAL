import { useState, useEffect } from "react";
import Movie from "../components/Movie.js";

function Home() {
  const [loading, setLoading] = useState(true);
  const [movies, setMovies] = useState([]);

  const getMovies = async () => {
    const json = await (
      await fetch(
        `https://yts.mx/api/v2/list_movies.json?limit=50&sort_by=year&minimum_rating=8.5`
      )
    ).json();

    setMovies(json.data.movies);
    setLoading(false);
  };

  useEffect(() => {
    getMovies();
  }, []);

  return (
    <>
      {loading ? (
        <h1>Loading...</h1>
      ) : (
        <div>
          {movies.map(({ title, medium_cover_image, summary, genres }, idx) => (
            <Movie
              title={title}
              coverImg={medium_cover_image}
              summary={summary}
              genres={genres}
              key={idx}
            />
          ))}
        </div>
      )}
    </>
  );
}

export default Home;

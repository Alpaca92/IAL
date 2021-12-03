import { useState, useEffect, useCallback } from "react";
import { useParams } from "react-router-dom";

function Detail() {
  const [{ title, medium_cover_image, rating }, setMovie] = useState({});
  const [loading, setLoading] = useState(true);
  const { id } = useParams();

  const getMovie = useCallback(async () => {
    const json = await (
      await fetch(`https://yts.mx/api/v2/movie_details.json?movie_id=${id}`)
    ).json();

    setMovie(json.data.movie);
    setLoading(false);
  }, [id]);

  useEffect(() => {
    getMovie();
  }, [getMovie]);

  return (
    <>
      {loading ? (
        <h1>Loading...</h1>
      ) : (
        <div>
          <img src={medium_cover_image} alt={`poster of the ${title}`} />
          <h2>{title}</h2>
          <small>rating: {`${rating / 10}`}</small>
        </div>
      )}
    </>
  );
}

export default Detail;

import { useState, useEffect } from "react";

function App() {
  const [loading, setLoading] = useState(true);
  const [coins, setCoins] = useState([]);

  useEffect(() => {
    fetch("https://api.coinpaprika.com/v1/tickers")
      .then((response) => response.json())
      .then((json) => {
        setCoins(json);
        setLoading(false);
      });
  }, []);

  if (loading) return <strong>Loading...</strong>;

  return (
    <>
      <h1>The Coins !</h1>
      <ul>
        {coins.map((coin) => (
          <li key={coin.id}>
            {coin.name} ({coin.symbol}) : {coin.quotes.USD.price} USD
          </li>
        ))}
      </ul>
    </>
  );
}

export default App;

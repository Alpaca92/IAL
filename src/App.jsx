import { BrowserRouter, Route, Routes } from 'react-router-dom';

import Header from './components/Header';
import Users from './components/Users';
import CreateUser from './components/CreateUser';

import 'bootstrap/dist/css/bootstrap.min.css';

export default function App() {
  return (
    <BrowserRouter>
      <Header />
      <Routes>
        <Route
          path='/'
          element={<Users />}
        />
        <Route
          path='/create'
          element={<CreateUser />}
        />
      </Routes>
    </BrowserRouter>
  );
}

// TODO: https://youtu.be/YQD3AgzjwUg?t=2494

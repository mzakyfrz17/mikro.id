import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import Home from "./pages/Home";
import DetailPage from './pages/detail';
import Lapak from './pages/Lapak';

  function App() {
    return (
      <Router>
        <Routes>
          <Route path='/' element={<Home/>}/>
          <Route path='/detail' element={<DetailPage/>}/>
          <Route path='/lapak' element={<Lapak/>}/>
        </Routes>
      </Router>
    );
  }

export default App;

/* eslint-disable no-unused-vars */
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom'
import Home from "./pages/Home";
import DetailPage from './pages/detail';
import Lapak from './pages/Lapak';
import AddProduct from './components/AddLapak';
import FormAddProduct from './components/FormAddLapak';
import DashboardAdmin from './pages/DashboardAdmin';
import EditProduct from './components/EditLapak';
import FormEditUser from './components/EditUser';
import FormAddUser from './components/FormAddUser';
import LoginAdmin from './components/LoginAdmin';

  function App() {
    return (
      <Router>
        <Routes>
          <Route path='/' element={<Home/>}/>
          <Route path='/detail/:id' element={<DetailPage/>}/>
          <Route path='/lapak' element={<Lapak/>}/>
          <Route path='/form' element={<AddProduct/>}/>
          <Route path='/admin' element={<LoginAdmin/>}/>
          <Route path="/admin/dashboard" element={<DashboardAdmin />} />
          <Route path="/admin/AddUser" element={<FormAddUser />} />
           <Route path='/admin/AddLapak' element={<FormAddProduct/>}/>
          <Route path="/admin/LapakAdmin/EditLapak/:productId" element={<EditProduct />} />
          <Route path="/admin/LapakAdmin/EditUser/:id" element={<FormEditUser />} />
         
        </Routes>
      </Router>
    );
  }

export default App;

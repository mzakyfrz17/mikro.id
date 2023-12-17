import React, { useState } from 'react';
import SideBarAdmin from "../components/Sidebar-Admin";
import Userlist from "../components/Userlist";
import ProductList from "../components/ProductList";

const DashboardAdmin=()=> {
    const [selectedMenu, setSelectedMenu] = useState('dashboard'); // Menambahkan state

  const handleMenuClick = (menu) => {
    setSelectedMenu(menu);
  };

  return (
    <div className="d-flex">
      <SideBarAdmin handleMenuClick={handleMenuClick} />
      <div className="content col-lg-10">
        {selectedMenu === 'dashboard' && (
          <>
            <h1 id="dashboard">Dashboard</h1>
            <p>Hi Admin, Welcome in Dashboard Admin</p>
          </>
        )}
        {selectedMenu === 'userList' && <Userlist />}
        {selectedMenu === 'productList' && <ProductList />}
      </div>
    </div>
  );
};

export default DashboardAdmin;
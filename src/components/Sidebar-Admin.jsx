import React from 'react';

const SideBarAdmin = ({ handleMenuClick }) => {
  return (
    <div className="sidebar col-lg-2 pt-3">
      <a href="#dashboard" onClick={() => handleMenuClick('dashboard')}>
        <p><i className="fa-solid fa-grip-vertical me-2"></i>Dashboard</p>
      </a>
      <a href="#user-list" onClick={() => handleMenuClick('userList')}>
        <p> <i className="fa-solid fa-user me-2"></i> Akun Profile</p>
      </a>
      <a href="#lapak-list" onClick={() => handleMenuClick('productList')}>
        <p> <i className="fa-solid fa-list me-2"></i>Daftar Lapak</p>
      </a>
    </div>
  );
};

export default SideBarAdmin;

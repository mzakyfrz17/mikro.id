import React, { useState } from "react";
import LoginForm from "./Login-form";
import DaftarForm from "./Daftar-form";
import "../style/style.css";


const Popup = () => {
  const [showLoginForm, setShowLoginForm] = useState(true);
  const [showDaftarForm, setShowDaftarForm] = useState(false);

  const handleLoginButtonClick = () => {
    setShowLoginForm(true);
    setShowDaftarForm(false);
  };

  const handleDaftarButtonClick = () => {
    setShowDaftarForm(true);
    setShowLoginForm(false);
  };


  return (
    <div className="popup">
      <div className="popup-content text-muted text-center">
        <h3>Selamat Datang</h3>
        <p>Masuk atau daftar untuk mendapatkan pengalaman terbaik dari Mikro.Id</p>
        <div className="btn-group gap-3" role="group">
          <button
            type="button"
            className="btn btn-login-form"
            onClick={handleLoginButtonClick}
          >
            Login
          </button>
          <button
            type="button"
            className="btn btn-daftar-form"
            onClick={handleDaftarButtonClick}
          >
            Daftar
          </button>
        </div>
        {showLoginForm && <LoginForm />}
        {showDaftarForm && <DaftarForm />}
      </div>
    </div>
  );
};

export default Popup;

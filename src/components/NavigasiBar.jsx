import Popup from "./Popup";
import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css"; // Import Bootstrap CSS
import "bootstrap/dist/js/bootstrap.bundle.min.js"; // Import Bootstrap JS
import "../style/style.css";

const NavigasiBar = () => {
  const [showPopup, setShowPopup] = useState(false);

  const handlePopupToggle = () => {
    setShowPopup(!showPopup); // Toggle the visibility
  };

  return (
    <>
      <nav className="navbar sticky-top navbar-expand-lg px-3">
        <div className="container-fluid align-self-center">
          <h3 className="navbar-brand fw-bold"><a href="/">Mikro.Id</a></h3>
          <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
                  aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse p-3 bg-white rounded-3" id="navbarTogglerDemo02">
            <ul className="navbar-nav ms-auto">
              <li className="nav-item">
                <button className="rounded-3 py-2">
                  <i className="fa-solid fa-bullhorn"></i>
                  <a href="/form">Sewakan Lapak</a>
                </button>
              </li>
              <li className="nav-item">
                <a href="/lapak" className="nav-link">Cari Lapak</a>
              </li>
              <li className="nav-item">
                <a href="/" className="nav-link" onClick={(e) => { e.preventDefault(); handlePopupToggle(); }}>Masuk/Daftar</a>
              </li>
              <li className="nav-item">
                <i className="fa-solid fa-user mt-3 fa-lg"></i>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      {showPopup && <Popup />}
    </>
  );
}

export default NavigasiBar;

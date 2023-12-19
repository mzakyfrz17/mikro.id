import Popup from "./Popup";
import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css"; 
import "bootstrap/dist/js/bootstrap.bundle.min.js"; 
import "../style/style.css";
import { NavLink, useNavigate } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { LogOut, reset } from "../features/authSlice";


const NavigasiBaru = () => {

  const [ showPopup, setShowPopup ] = useState(false);

  const handlePopupToggle = () => {
    setShowPopup(!showPopup); 
  };

  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user } = useSelector((state) => state.auth);

  const logout = () => {
    dispatch(LogOut());
    dispatch(reset());
    navigate("/");
  };

  return (
    <>
      <nav className="navbar sticky-top navbar-expand-lg px-3">
        <div className="container-fluid align-self-center">
          <h3> <NavLink to="/" className="navbar-brand fw-bold">Mikro.id
          </NavLink></h3>
          <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse p-3 bg-white rounded-3" id="navbarTogglerDemo02">
            <ul className="navbar-nav ms-auto">
              <li className="nav-item me-3">
                <button className="rounded-3 py-2">
                  <i className="fa-solid fa-bullhorn"></i>
                  <a href="/form">Sewakan Lapak</a>
                </button>
              </li>
              <li className="nav-item me-3 ">
                <a href="#list" className="nav-link active">Lapak</a>
              </li>
              <button onClick={logout} className="nav-link active nav-btn">
                <i className="fa-solid fa-right-from-bracket"></i>Logout
              </button>
            </ul>
          </div>
        </div>
      </nav>
      {showPopup && <Popup />}
    </>
  );
}

export default NavigasiBaru;
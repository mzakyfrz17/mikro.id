import React from 'react';
import { LogOut, reset } from "../features/authSlice";
import { useNavigate } from "react-router-dom";
import { useDispatch } from "react-redux";

const SideBarAdmin = ({ handleMenuClick }) => {

    const dispatch = useDispatch();
    const navigate = useNavigate();
    const logout = () => {
        dispatch(LogOut());
        dispatch(reset());
        navigate("/");
    };
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
    
            <button onClick={logout} className="nav-link">
            <p><i class="fa-solid fa-right-from-bracket me-2 ms-3"></i>Logout</p>
            </button>

        </div>
    );
};

export default SideBarAdmin;

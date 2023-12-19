import '../style/style.css';
import { Image } from 'react-bootstrap';
import hero from "../assets/images/Rumah.png";
import React, { useState } from "react";
import Popup from './Popup';

const Hero = () => {
  const [showPopup, setShowPopup] = useState(false);

  const handlePopupToggle = () => {
    setShowPopup(!showPopup); // Toggle the visibility
  };
    return (
      <>
      {showPopup && <Popup />}
        <div className="jumbotron">
        <div className="row">
          <div className="col-md-6 col-sm-12 align-self-center">
            <p className="text-muted text-jumbroton">Halo Selamat Datang</p>
            <h1 className="fw-bold text-jumbroton">Temukan Lapak <br/> Murah dan Mudah</h1>
            <p className="text-jumbroton">Tempatkan bisnis anda di pusat perhatian. <br/>
              Mulailah perjalanan anda menuju kesuksesan sekarang!</p>
            <button className="button p-2 rounded-3" onClick={(e) => { e.preventDefault(); handlePopupToggle(); }}>Cari lapak</button>
          </div>
          <div className="col-md-6 col-sm-12 align-self-center">
            <Image src={hero} alt="icon" className="img-icon"/>
          </div>
        </div>
      </div> 
      </> 
    )
}

export default Hero;
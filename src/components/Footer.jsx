/* eslint-disable jsx-a11y/anchor-is-valid */
import "../style/style.css";
import { Image } from "react-bootstrap";
import logo from '../assets/images/Rumah.png'

const Footer = () => {
    return (
        <footer className="footer text-white ">
    <div className="container-fluid">
      <div className="row konten-footer">
        <div className="col-md-4 mt-5">
          <div className="logo text-center align-item-center">
            <Image src={logo} alt="Logo" width={200}/>
            <p className="fw-bold">Mikro.Id</p>
          </div>
        </div>

        <div className="col-md-4 mt-5">
          <div className="links text-right">
            <h5 className="fw-bold">Mikro.Id</h5>
            <ul>
              <li>
                <a href="#">Tentang Kami</a>
              </li>
              <li>
                <a href="#">Daftar Lapak</a>
              </li>
              <li>
                <a href="#">Promosikan Lapak Anda</a>
              </li>
              <li>
                <a href="#">Pusat Bantuan</a>
              </li>
            </ul>

          </div>
        </div>

        <div className="col-md-4 mt-5">
          <div className="contact text-right">
            <h5 className="fw-bold">Hubungi Kami:</h5>
            <ul>
              <li>
                <a href="#">mikroid@gmail.com</a>
              </li>
              <li>
                <a href="#">+62812345998</a>
              </li>
            </ul>
          </div>
        </div>

      </div>
    </div>

    <div className="hak-cipta text-center py-2">
      <p>&copy; 2023 Mikro.Id. All rights reserved</p>
    </div>
  </footer>
    )
}

export default Footer;
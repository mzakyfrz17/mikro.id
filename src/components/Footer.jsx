/* eslint-disable jsx-a11y/anchor-is-valid */
import "../style/style.css";
import { Image } from "react-bootstrap";
import logo from '../assets/images/Rumah.png'

const Footer = () => {
    return (
        <footer class="footer text-white ">
    <div class="container-fluid">
      <div class="row konten-footer">
        <div class="col-md-4 mt-5">
          <div class="logo text-center align-item-center">
            <Image src={logo} alt="Logo" width={200}/>
            <p class="fw-bold">Mikro.Id</p>
          </div>
        </div>

        <div class="col-md-4 mt-5">
          <div class="links text-right">
            <h5 class="fw-bold">Mikro.Id</h5>
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

        <div class="col-md-4 mt-5">
          <div class="contact text-right">
            <h5 class="fw-bold">Hubungi Kami:</h5>
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

    <div class="hak-cipta text-center py-2">
      <p>&copy; 2023 Mikro.Id. All rights reserved</p>
    </div>
  </footer>
    )
}

export default Footer;
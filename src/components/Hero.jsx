import '../style/style.css';
import { Image } from 'react-bootstrap';
import hero from "../assets/images/Rumah.png";

const Hero = () => {
    return (
        <div class="jumbotron">
        <div class="row">
          <div class="col-md-6 col-sm-12 align-self-center">
            <p class="text-muted text-jumbroton">Halo Selamat Datang</p>
            <h1 class="fw-bold text-jumbroton">Temukan Lapak <br/> Murah dan Mudah</h1>
            <p class="text-jumbroton">Tempatkan bisnis anda di pusat perhatian. <br/>
              Mulailah perjalanan anda menuju kesuksesan sekarang!</p>
            <input type="search" className="form-control" data-table="table-hover" placeholder="Cari Lokasi" />
          </div>
          <div class="col-md-6 col-sm-12 align-self-center">
            <Image src={hero} alt="icon" className="img-icon"/>
          </div>
        </div>
      </div>  
    )
}

export default Hero;
import '../style/style.css';
import { Image } from 'react-bootstrap';
import hero from "../assets/images/Rumah.png";

const HeroLapak = () => {

    return (
        <div className="jumbotron">
        <div className="row">
          <div className="col-md-6 col-sm-12 align-self-center">
            <p className="text-muted text-jumbroton">Halo Selamat Datang</p>
            <h1 className="fw-bold text-jumbroton">Temukan Lapak <br/> Murah dan Mudah</h1>
            <p className="text-jumbroton">Tempatkan bisnis anda di pusat perhatian. <br/>
              Mulailah perjalanan anda menuju kesuksesan sekarang!</p>
          </div>
          <div className="col-md-6 col-sm-12 align-self-center">
            <Image src={hero} alt="icon" className="img-icon"/>
          </div>
        </div>
      </div> 
    )
}

export default HeroLapak;
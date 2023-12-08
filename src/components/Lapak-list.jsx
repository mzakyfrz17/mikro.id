import "../style/style.css";
import { Image } from "react-bootstrap";
import { useNavigate } from "react-router-dom";
import Lapak from "../assets/images/lapak.png";

const LapakList = () => {
  const lapakData = [
    {
      id: 1,
      title: "Lapak 1",
      location: "Jalan Ringroad Selatan",
      fasilitas: ["Air", "Listrik", "Lahan"],
      price: 600000,
    },
    {
      id: 2,
      title: "Lapak 2",
      location: "Jalan Ringroad Utara",
      fasilitas: ["Air", "Listrik"],
      price: 500000,
    },
    {
      id: 3,
      title: "Lapak 3",
      location: "Malioboro",
      fasilitas: ["Air", "Listrik", "Dapur"],
      price: 900000,
    },
    {
      id: 1,
      title: "Lapak 1",
      location: "Jalan Ringroad Selatan",
      fasilitas: ["Air", "Listrik", "Lahan"],
      price: 600000,
    },
    {
      id: 2,
      title: "Lapak 2",
      location: "Jalan Ringroad Utara",
      fasilitas: ["Air", "Listrik"],
      price: 500000,
    },
    {
      id: 3,
      title: "Lapak 3",
      location: "Malioboro",
      fasilitas: ["Air", "Listrik", "Dapur"],
      price: 900000,
    },
  ];

  return (
    <div className="content-lapak px-5">
      <h2 className="fw-bold mt-4 mb-5 text-center">Lapak Tersedia</h2>
      <div className="row">
        {lapakData.map((lapak) => (
          <ItemLapak key={lapak.id} {...lapak} />
        ))}
      </div>
    </div>
  );
};

const ItemLapak = ({ title, location, fasilitas, price }) => {
  const navigate = useNavigate();
  return (
    <div className="col-lg-3 col-md-4 col-sm-6 mb-4" id="item-lapak">
      <div className="card">
        <Image src={Lapak} alt="lapak" />
        <div className="card-body">
          <h5 className="card-title">{title}</h5>
          <p className="text-muted">{location}</p>
          <div className="ini-kotak d-flex mb-2">
            {fasilitas.map((fasilitas, index) => (
              <div key={index} className="kotak rounded-3 mr-2">
                <p className="fw-bold mb-0">#{fasilitas}</p>
              </div>
            ))}
          </div>
          <p><span className="fw-bold">Rp. {price.toLocaleString("id-ID")}</span>/Bulan</p>
          <button className="btn btn-primer" onClick={() => navigate('/detail')}>Pesan</button>
        </div>
      </div>
    </div>
  );
};

export default LapakList;

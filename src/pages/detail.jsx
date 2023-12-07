import NavigasiBar from '../components/NavigasiBar';
import Detail from '../components/detail-lapak';
import Rekomendasi from '../components/Rekomendasi';
import Footer from '../components/Footer';
import "../style/style.css";

function DetailPage() {
  return (
    <div>
     <NavigasiBar/>
     <Detail/>
     <Rekomendasi/>
    <Footer/>
    </div>
  );
}

export default DetailPage;

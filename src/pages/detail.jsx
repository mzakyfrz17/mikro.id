import NavigasiBaru from '../components/NavigasiBaru';
import ProductDetail from '../components/ProductDetail';
import Rekomendasi from '../components/Rekomendasi';
import Footer from '../components/Footer';
import "../style/style.css";

function DetailPage() {
  return (
    <div>
     <NavigasiBaru/>
     <ProductDetail/>
     <Rekomendasi/>
    <Footer/>
    </div>
  );
}

export default DetailPage;

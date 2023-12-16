import "../style/style.css";
import NavigasiBaru from '../components/NavigasiBaru';
import Hero from '../components/Hero';
import ProductList from "../components/Lapak-list";
import Footer from '../components/Footer';

function Lapak() {
  return (
    <div>
      <NavigasiBaru/>
      <Hero/>
      <ProductList/>
      <Footer/>
      
    </div>
  );
}

console.log('lapak list disini');

export default Lapak;
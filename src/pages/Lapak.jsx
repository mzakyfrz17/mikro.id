import "../style/style.css";
import NavigasiBar from '../components/NavigasiBar';
import Hero from '../components/Hero';
import LapakList from '../components/Lapak-list';
import Footer from '../components/Footer';

function Lapak() {
  return (
    <div>
      <NavigasiBar/>
      <Hero/>
      <LapakList/>
      <Footer/>
      
    </div>
  );
}

console.log('lapak list disini');

export default Lapak;
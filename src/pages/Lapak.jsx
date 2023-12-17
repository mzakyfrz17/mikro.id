import "../style/style.css";
import NavigasiBaru from '../components/NavigasiBaru';
import LapakList from "../components/Lapak-list";
import Footer from '../components/Footer';
import HeroLapak from "../components/heroLapak";
function Lapak() {
  return (
    <div>
      <NavigasiBaru/>
      <HeroLapak/>
      <LapakList/>
      <Footer/>
      
    </div>
  );
}

console.log('lapak list disini');

export default Lapak;
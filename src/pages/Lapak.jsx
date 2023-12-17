import "../style/style.css";
import NavigasiBaru from '../components/NavigasiBaru';
import LapakList from "../components/Lapak-list";
import Footer from '../components/Footer';

function Lapak() {
  return (
    <div>
      <NavigasiBaru/>
      <LapakList/>
      <Footer/>
      
    </div>
  );
}

console.log('lapak list disini');

export default Lapak;
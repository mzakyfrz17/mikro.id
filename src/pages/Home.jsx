import React from 'react';
import '../style/style.css';
import NavigasiBar from '../components/NavigasiBar.jsx';
import Hero from "../components/Hero.jsx";
import Rekomendasi from '../components/Rekomendasi.jsx';
import Profil from '../components/Profil.jsx';
import Footer from '../components/Footer';
import Team from '../components/team.jsx';
function Home() {
  return (
    <div>
     <NavigasiBar/>
     <Hero/>
     <Rekomendasi/>
     <Profil/>
     <Team/>
    <Footer/>
    </div>
  );
}

export default Home;

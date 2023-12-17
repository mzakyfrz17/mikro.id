import React from "react";
import { Image } from "react-bootstrap";
import raska from '../assets/images/foto-raska.png';
import andra from '../assets/images/foto-andra.png';
import zaky from '../assets/images/foto-zaky.png';
import subkhi from '../assets/images/foto-subkhi.png';
import shela from '../assets/images/foto-shela.png';
import "../style/style.css"

const Team = () => {
    return (
        <div className="wrapper mt-5 mb-4">
            <div className="judul text-center">
                <h2 className="fw-bold">Our Team</h2>
            </div>
            <div className="team d-flex flex-wrap justify-content-center gap-3 mt-3">
                <div className="member-team">
                    <div className="profile text-center">
                        <div className="style-foto-biru">
                            <Image src={zaky} className="img-profile" />
                        </div>

                        <h5 className="fw-bold mt-3">Zaky</h5>
                        <p className="text-info fw-bold">Backend</p>
                    </div>
                    <div className="profile-ikon d-flex justify-content-center gap-2">
                        <a href="https://www.instagram.com/mzakyfrz/"><i className="fa-brands fa-instagram"></i></a>
                        <a href="https://www.linkedin.com/in/muhamad-zaky-fareza-015873278/"><i className="fa-brands fa-linkedin"></i></a>
                        <a href="https://github.com/mzakyfrz17"><i className="fa-brands fa-github"></i></a>
                    </div>
                </div>

                <div className="member-team">
                    <div className="profile text-center">
                        <div className="style-foto-kuning">
                            <Image src={shela} className="img-profile"/>
                        </div>

                        <h5 className="fw-bold mt-3">Shela</h5>
                        <p className="text-info fw-bold">Frontend</p>
                    </div>
                    <div className="profile-ikon d-flex justify-content-center gap-2">
                    <a href="https://www.instagram.com/shelawdya/"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/shelawidiya/"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="https://github.com/shelawd"><i class="fa-brands fa-github"></i></a>
                    </div>
                </div>

                <div className="member-team">
                    <div className="profile text-center">
                        <div className="style-foto-biru">
                            <Image src={subkhi} className="img-profile" />
                        </div>

                        <h5 className="fw-bold mt-3">Subkhi</h5>
                        <p className="text-info fw-bold">Backend</p>
                    </div>
                    <div className="profile-ikon d-flex justify-content-center gap-2">
                    <a href="https://www.instagram.com/unr.subkhi/"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/subkhi-mashadi-6213b1260/"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="https://github.com/Iky-mash"><i class="fa-brands fa-github"></i></a>
                    </div>
                </div>

                <div className="member-team">
                    <div className="profile text-center">
                        <div className="style-foto-kuning">
                            <Image src={raska} className="img-profile" />
                        </div>

                        <h5 className="fw-bold mt-3">Nebras</h5>
                        <p className="text-info fw-bold">Frontend</p>
                    </div>
                    <div className="profile-ikon d-flex justify-content-center gap-2">
                    <a href="https://www.instagram.com/enraska/"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/nabraska-amarilys-sholikhah-5090b4217/"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="https://github.com/nebrascode"><i class="fa-brands fa-github"></i></a>
                    </div>
                </div>
                
                <div className="member-team">
                    <div className="profile text-center">
                        <div className="style-foto-biru">
                            <Image src={andra} className="img-profile" />
                        </div>

                        <h5 className="fw-bold mt-3">Andra</h5>
                        <p className="text-info fw-bold">UI/UX</p>
                    </div>
                    <div className="profile-ikon d-flex justify-content-center gap-2">
                    <a href="https://www.instagram.com/andrajnsaa_/"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://www.linkedin.com/in/andra-juansa/"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="https://github.com/andrajuansa"><i class="fa-brands fa-github"></i></a>
                    </div>
                </div>
            </div>
        </div>
    );
}

export default Team;

import { Image } from 'react-bootstrap';
import rekom from '../assets/images/rekomendasi-lapak.png';
const Rekomendasi = () => {
    return (
        <div class="container rekomendasi mb-4 mt-4">
            <div class="judul-rekomen text-center">
            <p class="fw-bold fs-4 mt-3 mb-4">Rekomendasi Lapak</p>
            </div>
            <div class="konten-utama-rekomen">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                    <div class="image-wrapper">
                        <Image src={rekom} alt="img-rekom"/>
                        <div class="button-container">
                        <button class="btn button">Dekat Universitas</button>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                <div class="image-wrapper">
                <Image src={rekom} alt="img-rekom"/>
                    <div class="button-container">
                    <button class="btn button">Dekat Universitas</button>
                    </div>
                </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                <div class="image-wrapper">
                <Image src={rekom} alt="img-rekom"/>
                    <div class="button-container">
                    <button class="btn button">Dekat Universitas</button>
                    </div>
                </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-3">
                <div class="image-wrapper">
                <Image src={rekom} alt="img-rekom"/>
                    <div class="button-container">
                    <button class="btn button">Dekat Universitas</button>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
    )
}

export default Rekomendasi;
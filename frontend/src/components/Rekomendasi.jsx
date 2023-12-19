import { Image } from 'react-bootstrap';
import rekom from '../assets/images/rekomendasi-lapak.png';
const Rekomendasi = () => {
    return (
        <div class="rekomendasi mb-4 mt-3 p-4">
            <h2 class="fw-bold text-center mb-5">Rekomendasi Lapak</h2>
            <div class="row justify-content-center">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-3 text-center">        
                        <Image src={rekom} alt="img-rekom" />
                        <p className='p-2 button rounded-3 d-inline-block'>Dekat Universitas</p>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-3 text-center">        
                        <Image src={rekom} alt="img-rekom" />
                        <p className='p-2 button rounded-3 d-inline-block'>Dekat Universitas</p>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-3 text-center">        
                        <Image src={rekom} alt="img-rekom" />
                        <p className='p-2 button rounded-3 d-inline-block'>Dekat Universitas</p>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-12 mb-3 text-center">        
                        <Image src={rekom} alt="img-rekom" />
                        <p className='p-2 button rounded-3 d-inline-block'>Dekat Universitas</p>
                </div>
            </div>
        </div>
    )
}

export default Rekomendasi;
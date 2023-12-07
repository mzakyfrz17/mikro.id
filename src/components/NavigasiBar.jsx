/* eslint-disable jsx-a11y/anchor-is-valid */
import "../style/style.css";
const NavigasiBar = () => {
    return (
        <nav class="navbar sticky-top navbar-expand-lg">
            <div class="container align-self-center">
            <h3 class="navbar-brand fw-bold"><a href="/">Mikro.Id</a></h3>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
                aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <button class="rounded-3 py-2">
                    <i class="fa-solid fa-bullhorn"></i>
                    <a href="/form">Sewakan Lapak</a>
                    </button>
                </li>
                <li class="nav-item">
                    <a href="/lapak" class="nav-link">Cari Lapak</a>
                </li>
                <li class="nav-item">
                    <a href="/login" class="nav-link">Masuk/Daftar</a>
                </li>
                </ul>
            </div>
            </div>
        </nav>
    )


}

export default NavigasiBar;
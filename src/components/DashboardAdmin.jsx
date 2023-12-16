import "../style/style.css"
import { Table, Image } from "react-bootstrap";
import gambar3 from "../assets/images/Gambar 3.png"

const DashboardAdmin = () => {
    return (
        <div className="d-flex">
            <div className="sidebar col-lg-2 pt-3">
                <a href="#dashboard">
                    <p><i class="fa-solid fa-grip-vertical me-2"></i>Dashboard</p>
                </a>
                <a href="/admin/ListUser">
                   <p> <i class="fa-solid fa-user me-2"></i> Akun Profile</p>
                </a>
                <a href="/admin/LapakAdmin">
                   <p> <i className="fa-solid fa-list me-2"></i>Daftar Lapak</p>
                </a>
            </div>


            <div className="content col-lg-10">
                <h1 id="dashboard">Dashboard</h1>
                <p>Hi Admin, Welcome in Dashboard Admin</p>
                <h4 id="data-user">Data User</h4>
                <Table striped bordered hover>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>John Doe</td>
                            <td>john.doe@example.com</td>
                            <td><button className="btn btn-warning">Edit</button> <button className="btn btn-danger">Delete</button></td>
                        </tr>
                    </tbody>
                </Table>

                <h4 id="data-lapak">Data Lapak</h4>
                <Table striped bordered hover>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Foto</th>
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>101</td>
                            <td className="image-cell"><Image src={gambar3} alt="Lapak A" width={110} /></td>
                            <td>Lapak A</td>
                            <td>Maguwo</td>
                            <td><button className="btn btn-warning">Edit</button> <button className="btn btn-danger">Delete</button></td>
                        </tr>
                    </tbody>
                </Table>
            </div>
        </div>
    )
}

export default DashboardAdmin;
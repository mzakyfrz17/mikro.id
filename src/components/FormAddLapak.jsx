/* eslint-disable jsx-a11y/img-redundant-alt */
import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const FormAddProduct = () => {
  const [title, setTitle] = useState("");
  const [address, setAddress] = useState("");
  const [price, setPrice] = useState("");
  const [desc, setDesc] = useState(""); // Tambahkan state untuk desc
  const [telp, setTelp] = useState(""); 
  const [file, setFile] = useState("");
  const [preview, setPreview] = useState("");
  const navigate = useNavigate();

  const loadImage = (e) => {
    const image = e.target.files[0];
    setFile(image);
    setPreview(URL.createObjectURL(image));
  };

  const saveProduct = async (e) => {
    e.preventDefault();
    const formData = new FormData();
    formData.append("file", file);
    formData.append("title", title);
    formData.append("address", address);
    formData.append("price", price);
    formData.append("desc", desc); // Tambahkan field desc ke FormData
    formData.append("telp", `${telp}`);


    try {
      await axios.post("http://localhost:5000/products", formData, {
        headers: {
          "Content-type": "multipart/form-data",
        },
      });
      navigate("/admin/LapakAdmin");
    } catch (error) {
      console.log(error);
    }
  };

  return (
    <div className="container mt-5">
      <div className="row justify-content-center">
        <div className="col-md-6">
          <form onSubmit={saveProduct}>
            <div className="mb-3">
              <label htmlFor="productName" className="form-label">
                Judul
              </label>
              <input
                type="text"
                className="form-control"
                id="productName"
                value={title}
                onChange={(e) => setTitle(e.target.value)}
                placeholder="Judul"
              />
            </div>
  
            <div className="mb-3">
              <label htmlFor="productAddress" className="form-label">
                Kota
              </label>
              <input
                type="text"
                className="form-control"
                id="productAddress"
                value={address}
                onChange={(e) => setAddress(e.target.value)}
                placeholder="jl. wahid hasyim RT 05 RW 05 sukamaju, singingi hilir sumatra selatan"
              />
            </div>
  
            <div className="mb-3">
              <label htmlFor="productPrice" className="form-label">
                Harga
              </label>
              <input
                type="text"
                className="form-control"
                id="productPrice"
                value={price}
                onChange={(e) => setPrice(e.target.value)}
                placeholder="500000"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="productPrice" className="form-label">
                Telp
              </label>
              <input
                type="text"
                className="form-control"
                id="productPrice"
                value={telp}
                onChange={(e) => setTelp(e.target.value)}
                placeholder="086524389265"
              />
            </div>
  
            <div className="mb-3">
              <label htmlFor="productDesc" className="form-label">
                Description
              </label>
              <textarea
                className="form-control"
                id="productDesc"
                value={desc}
                onChange={(e) => setDesc(e.target.value)}
                placeholder="Deskripsi"
              />
            </div>
  
            <div className="mb-3">
              <label htmlFor="productImage" className="form-label">
                Image
              </label>
              <input
                type="file"
                className="form-control"
                id="productImage"
                onChange={loadImage}
              />
            </div>
  
            {preview && (
              <figure className="image is-128x128">
                <img src={preview} alt="Preview Image" />
              </figure>
            )}
  
            <div className="mb-3">
              <button type="submit" className="btn btn-success">
                simpan
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
  
};

export default FormAddProduct;

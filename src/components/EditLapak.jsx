/* eslint-disable jsx-a11y/img-redundant-alt */
import React, { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate, useParams } from "react-router-dom";

const EditProduct = () => {
  const { productId } = useParams();
  const navigate = useNavigate();

  const [name, setName] = useState("");
  const [address, setAddress] = useState("");
  const [price, setPrice] = useState("");
  const [desc, setDesc] = useState("");
  const [telp, setTelp] = useState("");
  const [file, setFile] = useState("");
  const [preview, setPreview] = useState("");

  useEffect(() => {
    const fetchProductDetails = async () => {
      try {
        const response = await axios.get(`http://localhost:5000/products/${productId}`);
        const product = response.data;
  
        setName(product.name);
        setAddress(product.address);
        setPrice(product.price);
        setDesc(product.desc);
        setTelp(product.telp);
        setPreview(product.image);
      } catch (error) {
        console.error("Error fetching product details:", error);
      }
    };

    fetchProductDetails();
  }, [productId]);

  const loadImage = (e) => {
    const image = e.target.files[0];
    setFile(image);
    setPreview(URL.createObjectURL(image));
  };
  
  const updateProduct = async (e) => {
    e.preventDefault();
    const formData = new FormData();
    formData.append("file", file);
    formData.append("name", name);
    formData.append("address", address);
    formData.append("price", price);
    formData.append("desc", desc);
    formData.append("telp", telp);

    try {
      console.log("Data yang dikirim ke server:", formData);
      
      await axios.patch(`http://localhost:5000/products/${productId}`, formData, {
        headers: {
          "Content-type": "multipart/form-data",
        },
      });
      
      navigate("/lapak");
    } catch (error) {
      console.error("Error updating product:", error);
    }
  };

  return (
    <div className="container mt-5">
      <div className="row justify-content-center">
        <div className="col-md-6">
          <form onSubmit={updateProduct}>
            <div className="mb-3">
              <label htmlFor="productName" className="form-label">
                Judul
              </label>
              <input
                type="text"
                className="form-control"
                id="productName"
                value={name}
                onChange={(e) => setName(e.target.value)}
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
                placeholder="Alamat"
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
                placeholder="Harga"
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
                placeholder="Nomor Telepon"
              />
            </div>

            <div className="mb-3">
              <label htmlFor="productDesc" className="form-label">
                Deskripsi
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
                Gambar
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

            <button type="submit" className="btn btn-primary">
              Update
            </button>
          </form>
        </div>
      </div>
    </div>
  );
};

export default EditProduct;

/* eslint-disable no-undef */
/* eslint-disable jsx-a11y/img-redundant-alt */
/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { useState, useEffect } from "react";
import axios from "axios";
import "../style/style.css";
import { useNavigate } from "react-router-dom";

const LapakList = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    getProducts();
  }, []);

  const getProducts = async () => {
    const response = await axios.get(`http://localhost:5000/products`);

    setProducts(response.data);
    console.log(response);
  };

  const formatCurrency = (amount) => {
    const formatter = new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
    });
    return formatter.format(amount);
  };
  const navigate = useNavigate();
  return (
    <div className="container mt-5 mb-3 " id="list">
      <h2 className="fw-bold text-center">Lapak Tersedia</h2>
      <div className="row ">
        {products.map((product) => (
          <div className=" col-lg-3 col-md-4 col-sm-6 mb-4 " key={product.id}>
            <div className="card">
            <img src={product.url} alt="lapak" />
            <div className="card-body">
              <h5 className="card-title">{product.name}</h5>
              <p className="text-muted">{product.address}</p>
              <p><span className="fw-bold">{formatCurrency(product.price)}</span>/Bulan</p>
              <button className="btn btn-primer" onClick={() => navigate(`/detail/${product.id}`)}>
                Pesan
              </button>
            </div>
          </div>
          </div>
        ))}
      </div>
    </div>
  );
  
};

export default LapakList;

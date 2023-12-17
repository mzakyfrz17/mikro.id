/* eslint-disable react-hooks/exhaustive-deps */
import React, { useState, useEffect } from "react";
import axios from "axios";
import { Image } from "react-bootstrap";
import { useParams } from "react-router-dom";
import gambar2 from '../assets/images/Gambar 2.png';
import gambar1 from '../assets/images/Gambar 1.png';
import user from '../assets/images/pengguna.png';

const ProductDetail = () => {
  const { id } = useParams();
  const [product, setProduct] = useState({});

  useEffect(() => {
    getProductDetail();
  }, [id]);

  const getProductDetail = async () => {
    try {
      const response = await axios.get(`http://localhost:5000/products/${id}`);
      setProduct(response.data);
    } catch (error) {
      console.log(error);
    }
  };

  const formatCurrency = (amount) => {
    const formatter = new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
    });
    return formatter.format(amount);
  };

  const redirectToWhatsapp = () => {
    const { telp } = product;

    if (telp) {
      const formattedPhoneNumber = telp.replace(/^0/, '+62');
      const whatsappUrl = `https://wa.me/${formattedPhoneNumber}`;
      window.open(whatsappUrl, '_blank');
    } else {
      console.error('Phone number not available');
    }
  };

  return (
    <div className="container mt-5">
  <div className="row">
    <div className="col-lg-8 col-md-8 col-sm-12">
      {/* Gambar */}
      <Image src={product.url} className="detail-img" id="detail1" alt="Gambar Kiri" style={{ width: '700px', height: '450px' }} />
    </div>

    <div className="col-lg-4 col-md-4 col-sm-12">
      {/* Deskripsi */}
      <div className="deskripsi">
        <h5>{product.name}</h5>
        <p className="text-muted">{product.address}</p>
        <h5>Deskripsi</h5>
        <p style={{ whiteSpace: 'pre-line' }}>{product.desc}</p>
      </div>
    </div>

    <div className="col-lg-4 col-md-4 col-sm-12 mt-4">
      {/* Harga dan Tombol */}
      <div className="harga-tombol">
        <h5>{formatCurrency(product.price)}/Bulan</h5>
        <div className="card mb-3 shadow w-75">
          <button className="btn btn-primer" onClick={redirectToWhatsapp}>
            <i className="fab fa-whatsapp"></i> Whatsapp
          </button>
        </div>
      </div>
    </div>
  </div>
</div>

  );
};

export default ProductDetail;

/* eslint-disable jsx-a11y/alt-text */
import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import axios from "axios";

const ProductList = () => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    getProducts();
  }, []);

  const getProducts = async () => {
    const response = await axios.get("http://localhost:5000/products");
    setProducts(response.data);
  };

  const deleteProduct = async (productId) => {
    await axios.delete(`http://localhost:5000/products/${productId}`);
    getProducts();
  };

  return (
    <div className="ml-10 px-5">
      <h1 className="title">Lapak</h1>
      <p className="subtitle">daftar lapak </p>
      <Link to="/admin/AddLapak" className="button p-2 rounded-3">
        Add New
      </Link>
      <table className="table is-striped is-fullwidth">
        <thead>
          <tr>
            <th>No</th>
            <th>Image</th>
            <th>Judul</th>
            <th>Harga</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {products.map((product, index) => (
            <tr key={product.id}>
              <td>{index + 1}</td>
              <td><img src={product.url}  style={{ width: '50px', height: '50px' }}/></td>
              <td>{product.name}</td>
              <td>{product.price}</td>

              <td>
              <Link
  to={`/admin/LapakAdmin/EditLapak/${product.id}`}
  className="button is-small is-info"
>
  Edit
</Link>
                <button
                  onClick={() => deleteProduct(product.id)}
                  className="button is-small is-danger"
                >
                  Delete
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default ProductList;

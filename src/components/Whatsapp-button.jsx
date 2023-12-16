/* eslint-disable react-hooks/rules-of-hooks */
import React, { Component } from 'react';
import axios from 'axios';
import { useParams } from 'react-router-dom';

class WhatsappButton extends Component {
  state = {
    phoneNumber: '', 
  };

  async componentDidMount() {
    try {
      const { id } = useParams();
      const response = await axios.get(`http://localhost:5000/products/${id}`);
      const phoneNumber = response.data.telp; // Pastikan field yang menyimpan nomor telepon sesuai dengan data yang diambil dari API
      this.setState({ phoneNumber });
    } catch (error) {
      console.error('Error fetching phone number:', error);
    }
  }

  redirectToWhatsapp = () => {
    const { phoneNumber } = this.state;

    if (phoneNumber) {
      // Ubah nomor telepon ke format yang sesuai untuk URL WhatsApp
      const formattedPhoneNumber = phoneNumber.replace(/^0/, '+62');

      const whatsappUrl = `https://wa.me/${formattedPhoneNumber}`;
      window.open(whatsappUrl, '_blank');
    } else {
      console.error('Phone number not available');
    }
  };

  render() {
    return (
      <button className="btn btn-primer" onClick={this.redirectToWhatsapp}>
        <i className="fa-brands fa-whatsapp"></i> Whatsapp
      </button>
    );
  }
}

export default WhatsappButton;

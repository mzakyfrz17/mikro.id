import React from 'react';

class WhatsappButton extends React.Component {
  redirectToWhatsapp = () => {
    const phoneNumber = "6281234567890";

    const whatsappUrl = `https://wa.me/${phoneNumber}`;

    window.open(whatsappUrl, "_blank");
  }

  render() {
    return (
      <button className="btn btn-primer" onClick={this.redirectToWhatsapp}>
        <i className="fa-brands fa-whatsapp"></i> Whatsapp
      </button>
    );
  }
}

export default WhatsappButton;

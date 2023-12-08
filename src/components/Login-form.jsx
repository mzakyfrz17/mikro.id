import React, { useState } from 'react';
import { Form, InputGroup } from 'react-bootstrap';
import { useNavigate } from 'react-router-dom';

const LoginForm = () => {
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();

    // Add your form validation logic here
    if (validateForm()) {
      // If the form is valid, navigate to the specified route
      navigate('/lapak');
    }
  };

  const validateForm = () => {
    // Implement your form validation logic here
    // You can check the length, format, or any other rules for email and password
    // For simplicity, this example only checks if the fields are not empty

    if (!email || !password) {
      alert('Please fill in all fields.');
      return false;
    }

    return true;
  };

  return (
    <div className='login-form'>
      <Form onSubmit={handleSubmit}>
        <InputGroup className="mb-2">
          <Form.Control
            type="email"
            placeholder="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </InputGroup>

        <InputGroup className="mb-2">
          <Form.Control
            type="password"
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </InputGroup>

        <div className="d-grid gap-2">
          <button className="btn btn-primer" type="submit">
            Login
          </button>
        </div>
      </Form>
    </div>
  );
};

export default LoginForm;

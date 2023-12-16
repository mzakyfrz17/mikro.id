/* eslint-disable no-unused-vars */
import React, { useState, useEffect } from 'react';
import { Form, InputGroup } from 'react-bootstrap';
import { useNavigate } from 'react-router-dom';
import { useDispatch, useSelector } from "react-redux";
import { LoginUser, reset } from "../features/authSlice";

const LoginForm = () => {
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const dispatch = useDispatch();
  const { user, isError, isSuccess, message } = useSelector((state) => state.auth);

  useEffect(() => {
    if (user || isSuccess) {
      navigate("/lapak");
    }
    dispatch(reset());
  }, [user, isSuccess, dispatch, navigate]);

  const handleAuth = (e) => {
    e.preventDefault();
    dispatch(LoginUser({ email, password }));
  };

  return (
    <div className='login-form'>
      <Form onSubmit={handleAuth}>
        {isError && <p className="has-text-centered">{message}</p>}
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
          <button className="btn btn-primary" type="submit">
            Login
          </button>
        </div>
      </Form>
    </div>
  );
};

export default LoginForm;

/* eslint-disable no-unused-vars */
/* eslint-disable no-undef */
import React, { useState, useEffect } from 'react';
import { Form, InputGroup } from 'react-bootstrap';
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from 'react-router-dom';
import { RegisterUser, reset } from "../features/authSlice";
import axios from 'axios';

// const DaftarForm = () => {
//   const navigate = useNavigate();
//   const [name, setName] = useState('');
//   const [email, setEmail] = useState('');
//   const [password, setPassword] = useState('');
//   const [confPassword, setConfPassword] = useState('');
//   const dispatch = useDispatch();
//   const { user, isError, isSuccess, message } = useSelector((state) => state.auth);
const DaftarForm = () => {
  const navigate = useNavigate();
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confPassword, setConfPassword] = useState('');
  const dispatch = useDispatch();
  const { user, isError, isSuccess, message } = useSelector((state) => state.auth);

  useEffect(() => {
    if (user || isSuccess) {
      navigate("/lapak");
    }
    dispatch(reset());
  }, [user, isSuccess, dispatch, navigate]);

  // const handleRegister = async (e) => {
  //   e.preventDefault();
  //   try {
  //     await dispatch(RegisterUser({ name, email, password, confPassword }));
  //     // Check if registration was successful
  //     if (!isError && isSuccess) {
  //       // Navigate to the desired page
  //       navigate("/lapak");
  //     }
  //   } catch (error) {
  //     // Handle any errors during registration
  //     if (error.response) {
  //       console.log(error.response.data.msg);
  //     }
  //   }
  // };
  const handleRegister = async (e) => {
    e.preventDefault();
    try {
      await dispatch(RegisterUser({ name, email, password, confPassword }));
      if (!isError && isSuccess) {
        navigate("/lapak");
      }
    } catch (error) {
      if (error.response) {
        console.log(error.response.data.msg);
      }
    }
  };

  return (
    <div className='daftar-form'>
      <Form onSubmit={handleRegister}>
        <InputGroup className="mb-2" >
          {isError && <p className="has-text-centered">{message}</p>}
          <Form.Control
            type="text"
            placeholder="Nama lengkap"
            aria-label="nama"
            aria-describedby="basic-addon1"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
          />
        </InputGroup>
        <InputGroup className="mb-2">
          <Form.Control
            type="email"
            placeholder="Email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
            aria-label="email"
            aria-describedby="basic-addon1"
          />
        </InputGroup>
        <InputGroup className="mb-2">
          <Form.Control
            type="password"
            placeholder="Password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
            aria-label="password"
            aria-describedby="basic-addon1"
          />
        </InputGroup>
        <InputGroup className="mb-2">
          <Form.Control
            type="password"
            placeholder="Confirm Password"
            value={confPassword}
            onChange={(e) => setConfPassword(e.target.value)}
            required
            aria-label="password"
            aria-describedby="basic-addon1"
          />
        </InputGroup>
        <div className="d-grid gap-2">
          <button className="btn btn-primer" type="submit">Daftar</button>
        </div>
      </Form>
    </div>
  );
}

export default DaftarForm;

import React, { useState } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

const FormAddUser = () => {
  const [ name, setName ] = useState("");
  const [ email, setEmail ] = useState("");
  const [ password, setPassword ] = useState("");
  const [ confPassword, setConfPassword ] = useState("");
  const [ role, setRole ] = useState("");
  const [ msg, setMsg ] = useState("");
  const navigate = useNavigate();

  const saveUser = async (e) => {
    e.preventDefault();
    try {
      await axios.post("http://localhost:5000/users", {
        name: name,
        email: email,
        password: password,
        confPassword: confPassword,
        role: role,
      });
      navigate("/admin/ListUser");
    } catch (error) {
      if (error.response) {
        setMsg(error.response.data.msg);
      }
    }
  };
  return (
    <div className="container p-3 mt-2">
      <h1 className="title">Users</h1>
      <h2 className="subtitle">Add New User</h2>
      <div className="content">
        <form onSubmit={saveUser}>
          <p className="has-text-centered">{msg}</p>
          <div className="field">
            <label className="form-label">Name</label>
            <div className="control">
              <input
                type="text"
                className="form-control"
                value={name}
                onChange={(e) => setName(e.target.value)}
                placeholder="Name"
              />
            </div>
          </div>
          <div className="field">
            <label className="form-label">Email</label>
            <div className="control">
              <input
                type="text"
                className="form-control"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="Email"
              />
            </div>
          </div>
          <div className="field">
            <label className="form-label">Password</label>
            <div className="control">
              <input
                type="password"
                className="form-control"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder="******"
              />
            </div>
          </div>
          <div className="field">
            <label className="form-label">Confirm Password</label>
            <div className="control">
              <input
                type="password"
                className="form-control"
                value={confPassword}
                onChange={(e) => setConfPassword(e.target.value)}
                placeholder="******"
              />
            </div>
          </div>
          <div className="field">
            <label className="form-label">Role</label>
            <div className="control">
              <div className="select is-fullwidth">
                <select
                  value={role}
                  onChange={(e) => setRole(e.target.value)}
                >
                  <option value="admin">Admin</option>
                  <option value="user">User</option>
                </select>
              </div>
            </div>
          </div>
          <div className="field mt-4">
            <div className="control">
              <button type="submit" className="btn btn-primer">
                Save
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  );
};

export default FormAddUser;

import React, { useState, useEffect } from "react";
import axios from "axios";
import { Link } from "react-router-dom";



const Userlist = () => {
  const [ users, setUsers ] = useState([]);

  useEffect(() => {
    getUsers();
  }, []);

  const getUsers = async () => {
    const response = await axios.get("http://localhost:5000/users");
    setUsers(response.data);
    console.log(response.data)
  };



  const deleteUser = async (userId) => {
    await axios.delete(`http://localhost:5000/users/${userId}`);
    getUsers();
  };

  return (
    <div className="ml-10 px-5">
      <h2 className="title">Users</h2>
      <p className="subtitle">List of User</p>
      <Link to="/admin/AddUser" className="button p-2 rounded-3">
        Add New
      </Link>
      <div className="table-container ">
        <table className="table is-striped is-fullwidth">
          <thead>
            <tr>
              <th>No</th>
              <th>Name</th>
              <th>Email</th>
              <th>Role</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            {users.map((user, index) => (
              <tr key={user.uuid}>
                <td>{index + 1}</td>
                <td>{user.name}</td>
                <td>{user.email}</td>
                <td>{user.role}</td>
                <td>
                  <Link
                    to={`/admin/LapakAdmin/EditUser/${user.uuid}`}
                    className="btn btn-warning btn-sm">
                    <i class="fa-regular fa-pen-to-square"></i>
                  </Link>
                  <button
                    onClick={() => deleteUser(user.uuid)}
                    className="btn btn-danger btn-sm"
                  >
                    <i class="fa-solid fa-trash"></i>
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};



export default Userlist;

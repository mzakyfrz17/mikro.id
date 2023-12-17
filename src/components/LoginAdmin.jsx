import React, { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import { LoginUser, reset } from "../features/authSlice";

const LoginAdmin = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const dispatch = useDispatch();
  const navigate = useNavigate();
  const { user, isError, isSuccess, isLoading, message } = useSelector(
    (state) => state.auth
  );

  useEffect(() => {
    if (user) {
      if (user.role !== 'admin') {
        dispatch(reset());
        alert("Hanya Admin Yang Bisa Masuk");
        return;
      }
      navigate("/admin/dashboard");
    }
    dispatch(reset());
  }, [user, dispatch, navigate]);
  const Auth = (e) => {
    e.preventDefault();
    dispatch(LoginUser({ email, password }));
  };

  return (
    <section style={{ height: "100vh", width: "100vw", display: "flex", alignItems: "center", justifyContent: "center" }}>
      <div style={{ width: "100%" }}>
        <div style={{ width: "300px", margin: "0 auto" }}>
          <form onSubmit={Auth} style={{ padding: "20px", border: "1px solid #ccc", borderRadius: "5px" }}>
            {isError && <p style={{ textAlign: "center", color: "#ff3860" }}>{message}</p>}
            <h1 style={{ fontSize: "24px", marginBottom: "20px" }}>Sign In</h1>
            <div style={{ marginBottom: "15px" }}>
              <label style={{ marginBottom: "5px" }}>Email</label>
              <div style={{ control: "control" }}>
                <input
                  type="text"
                  style={{ width: "100%", padding: "10px", border: "1px solid #ccc", borderRadius: "3px" }}
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                  placeholder="Email"
                />
              </div>
            </div>
            <div style={{ marginBottom: "15px" }}>
              <label style={{ marginBottom: "5px" }}>Password</label>
              <div style={{ control: "control" }}>
                <input
                  type="password"
                  style={{ width: "100%", padding: "10px", border: "1px solid #ccc", borderRadius: "3px" }}
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  placeholder="******"
                />
              </div>
            </div>
            <div style={{ marginBottom: "15px" }}>
              <button
                type="submit"
                className="btn btn-primer"
              >
                {isLoading ? "Loading..." : "Login"}
              </button>
            </div>
          </form>
        </div>
      </div>
    </section>
  );
  
};

export default LoginAdmin;

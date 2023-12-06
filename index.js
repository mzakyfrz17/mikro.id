import express from  "express";
import cors from "cors";
import userRoutes from "./routes/userRoutes.js";
import session from "express-session";
import dotenv from "dotenv";
// import db from "./config/database.js";
import lapakRoutes from "./routes/lapakRoutes.js";
import authRoutes from "./routes/authRoutes.js";
dotenv.config();

const app = express();

// (async()=>{
//     await db.sync();
// })
app.use(session({
    secret:process.env.SESS_SECRET,
    resave:false,
    saveUninitialized:true,
    cookie: {
        secure: 'auto'
    }
}));
app.use(cors({
    credentials:true,
    origin: 'http://localhost:3000'
}));
app.use(express.json());
app.use(userRoutes);
app.use(lapakRoutes);
app.use(authRoutes);
app.listen(process.env.APP_PORT, ()=> console.log('server up and running...'));
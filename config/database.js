import {Sequelize} from "sequelize";

const db = new Sequelize('mikro_id','root','',{
    host: 'localhost',
    dialect: "mysql"
});

export default db;
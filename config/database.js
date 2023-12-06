import sequelize  from "sequelize";

const db = new sequelize('mikro_db', 'root', '',{
    host: 'localhost',
    dialect: 'mysql'
});

export default db;
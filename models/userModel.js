import sequelize  from "sequelize";
import db from "../config/database.js";

const {DataTypes} = sequelize;

const Users = db.define('users', {
   uuid:{
    type: DataTypes.STRING,
    defaultValue: DataTypes.UUIDV4,
    allowNull: false,
    validate:{
        notEmpty: true
    }
   },
   name:{
    type: DataTypes.STRING,
    allowNull: false,
    validate:{
        notEmpty: true,
        len: [3, 100]
    }
   },
   email:{
    type: DataTypes.STRING,
    allowNull: false,
    validate:{
        notEmpty: true,
        isEmail: true
    }
   },
   password:{
    type: DataTypes.STRING,
    allowNull: false,
    validate:{
        notEmpty: true,
    }
   },
   role:{
    type: DataTypes.STRING,
    allowNull: false,
    validate:{
        notEmpty: true,
    }
   },
}, {
    freezeTableName:true
});

export default Users;

(async()=>{
await db.sync();
})();
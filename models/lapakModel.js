import sequelize  from "sequelize";
import db from "../config/database.js";
import Users from "./userModel.js";

const {DataTypes} = sequelize;

const Lapaks = db.define('lapak', {
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
   price:{
    type: DataTypes.INTEGER,
    allowNull: false,
    validate:{
        notEmpty: true,
    }
   },
    userId:{
    type: DataTypes.INTEGER,
    allowNull: false,
    validate:{
        notEmpty: true,
    }
   },
}, {
    freezeTableName:true
});

Users.hasMany(Lapaks);
Lapaks.belongsTo(Users, { foreignKey: 'userId'});
export default Lapaks;

(async()=>{
await db.sync();
})();
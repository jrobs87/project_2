module.exports = function(sequelize, DataTypes) {
  var Dog = sequelize.define("Dog", {
    FK_dog_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      validate: {
        len: [1,255]
      },
      
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1, 50]
      }
    },
    yard: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    other_pets: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    kids: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    female: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: false
    },
    size: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    profile_image: {
      type: DataTypes.STRING(255),
      allowNull: false,
      validate: {
        len: [1, 255]
      }
    },
    profile_url: {
      type: DataTypes.STRING(255),
      allowNull: false,
      validate: {
        len: [1, 255]
      }
    }
  },{
    timestamps: false
});
  return Dog;
};

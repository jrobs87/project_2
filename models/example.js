//Basic model (lacks more specified fields)
module.exports = function(sequelize, DataTypes) {
  var Dog = sequelize.define("dogs_stats", {
    dog_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false
    },
    dog_name: DataTypes.STRING,
    yard: DataTypes.BOOLEAN,
    other_pets: DataTypes.BOOLEAN,
    kids: DataTypes.BOOLEAN,
    size: DataTypes.INTEGER,
    female: DataTypes.BOOLEAN,
    profile_image: DataTypes.STRING,
    profile_url: DataTypes.STRING
  }, {
    timestamps: false // removed timestamps - throws errors otherwise and not needed
});
  return Dog;
};
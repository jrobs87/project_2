var db = require("../models");


module.exports = function(app) {
  // Get all dogs that match user parameters
  app.get("/api/dogs", function(req, res) {
    db.Dog.findAll({}).then(function(Dogs) {
      res.json(Dogs);
    });
  });

  // Save a match
  app.post("/api/dogs", function(req, res) {
    var dbQuery = "INSERT INTO matches (?,?) VALUES (?,?)";

    connection.query(dbQuery, [req.body, req.body], function(err, result) {
      if (err) throw err;
      console.log("Match saved...");
      res.end();
    });
  });

  // Delete an example by id
  app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(dbExample) {
      res.json(dbExample);
    });
  });

};
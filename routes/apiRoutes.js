var db = require("../models");

module.exports = function (app) {
  // Get all examples
  app.get("/api/examples", function (req, res) {
    db.Example.findAll({}).then(function (dbExamples) {
      res.json(dbExamples);
    });
  });

  // Create a new example
  app.post("/api/examples", function (req, res) {
    db.Example.create(req.body).then(function (dbExample) {
      res.json(dbExample);
    });
  });

  // Delete an example by id
  app.delete("/api/examples/:id", function (req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function (dbExample) {
      res.json(dbExample);
    });
  });

  // SWIPE TESTING ROUTE
  app.get("/api/swipe", function (req, res) {
    db.swipe.findAll({}).then(function (dbswipe) {
      res.send(dbswipe);
      // for (dbswipe)
      console.log(dbswipe.length);
      
      for (i = 0; i < dbswipe.length; i++) {
        console.log(dbswipe[i].dataValues.dog_img);
      }
      console.log(dbswipe[0].dataValues)
    });
  });

};

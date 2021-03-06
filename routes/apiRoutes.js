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

  // SWIPER API ROUTE TESTING
  app.get("/api/swiper", function (req, res) {
    db.swipe.findAll({}).then(function (dbswipe) {
      res.send(dbswipe);
      
      console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
      console.log(`Dog Swiper API delivered with ${dbswipe.length} dog cards.  All matches below!`);

      // Log out all dog matches.
      for (i = 0; i < dbswipe.length; i++) {
        console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
        console.log(dbswipe[i].dataValues)
      }
    });
  });

};

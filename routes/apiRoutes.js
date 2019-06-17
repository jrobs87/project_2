var db = require("../models");


module.exports = function (app, sequelize, DataTypes) {
  var Dog = require("../models/example")(sequelize, DataTypes)
  // Get all examples
  app.get("/api/results", function (Dog) {
    db.dogs_stats.findAll().then(dbdog_stats => {
      console.log(dbdog_stats);
    })

  })
  // Create a new example
  app.post("/api/examples", function (req, res) {
    db.Example.create(req.body).then(function (dbExample) {
      res.json(dbExample);
    });
  });

  // API Route for Survey Data
  app.post("/api/survey", function (req, res) {
    console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
    console.log('User Data Received.  Survey responses below...')

    console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
    //console.log(req.body)

    // MARSHALL + DAVID - comparison logic here!
    //possible db query for dog finder
//   var userChoice1 = req.body.yard;
//   var userChoice2 = req.body.otherPets;
//   var userChoice3 = req.body.kids;
//   var userChoice4 = req.body.size;
//   var userChoice5 = req.body.sex;

// sequelize.query("SELECT * FROM dogs_stats WHERE yard="+"'"+userChoice1+"'"+" AND other_pets="+"'"+userChoice2+"'"+" AND kids=""'"+userChoice3+"'"+"AND size="+"'"+userChoice4+"'"+" AND sex="+"'"+userChoice5+"'")

    //If we try to do the comparison via friendfinder method
    // db.swipe.findAll({}).then(function (dbswipe) {
    //   console.log(userArray)
    //   var bestDog = {
    //     name: "",
    //     photo: "",
    //     responses: Infinity
    // }

    //   var compVariant = []
    //     var a = 0;
    //   for (var x = 0; x < dbswipe.length; x++) {
    //   //Need to create an array for resposnes for each dog (maybe js file like friendfinder)

    //   //Temp values for raw database query response (js would probably be more effective way of doing it)
    //   var yard = dbswipe[x].dataValues.yard;
    //   var otherPets = dbswipe[x].dataValues.other_pets;
    //   var kids = dbswipe[x].dataValues.kids;
    //   var size = dbswipe[x].dataValues.size;
    //   var sex = dbswipe[x].dataValues.sex;

    //   // //dogList could be data pulled from js file db data is sent to
    //   var listA = dogList[x].responses;
    //   var listB = userArray;
    //         for (var j = 0; j <listB.length; j++){
    //              a += Math.abs(parseInt(listB[j]) - parseInt(listA[j]));
    //         }
    //         compVariant.push(a)
    //         a = 0;
    //     console.log(compVariant)
        
    //     var z = Math.min(...compVariant)
    //     let y = compVariant.indexOf(z);
    //     //dogList could be data pulled from js file db data is sent to
    //     bestDog = dogList[y]
    // //console.log(dbswipe[x].dataValues)
          // }
  // })
    res.send('User Data succesfully received!'); // Ideally we would redirect to /swiper but would be rendered like html - solved client side for now.
  })

  // Delete an example by id
  app.delete("/api/examples/:id", function (req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function (dbExample) {
      res.json(dbExample);
    });
  });

  // SWIPER API ROUTE TESTING
  app.get("/api/swiper", function (req, res) {
    db.swipe.findAll({ where: {name: Dawson}}).then(function (dbswipe) {
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

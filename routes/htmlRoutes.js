var db = require("../models");
var path = require("path");
var keys = require("../api/keys");
var axios = require("axios")

module.exports = function (app) {
  // Load index page
  app.get("/", function (req, res) {
    res.send("The Home Page");
  });

  app.get("/login", function (req, res) {
    res.send("The Login Page")
  })

  app.get("/profile", function (req, res) {
    res.send("The User Profile Page")
  })

  // app.get("/swiper", function (req, res) {
  //   res.send("The Dog Swiper Page")
  // })

  // BEGIN SWIPE HTML ROUTE TESTING
  app.get("/swiper", function (req, res) {
    db.swipe.findAll({}).then(function (dbswipe) {
      hbsObject = dbswipe;
      console.log(hbsObject);
      res.render('swipe', hbsObject);
      console.log('----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ')
      console.log(`Swiper Page delivered to client with ${dbswipe.length} dog cards.`);
    });
  });
  // END SWIPE HTML ROUTE TESTING

  app.get("/results", function (req, res) {
    res.send("The results page")
  })

  app.get("/organizations", function (req, res) {
    res.sendFile(path.join(__dirname, "/../views/petfinder_organization.html"))
  })

  app.post("/organizations", function (req, res) {
    var userZip = req.body.zipcode
    var token = keys
     axios({
       method: "POST",
       url: "https://api.petfinder.com/v2/oauth2/token",
       data: "grant_type=client_credentials&client_id=" + token.petfinder.id + "&client_secret=" + token.petfinder.secret,
     }).then(function (response) {
       var token = response.data.access_token
        axios({
          method: "GET",
          url: "https://api.petfinder.com/v2/organizations?location="+userZip,
          headers: { "Authorization": "Bearer " + token },
        }).then(function (response) {
        var organs =response.data.organizations
        res.json(organs)
        });
     })
  })
}
//this js file saves all information to be rooted to other relevant servers
let surveyAns = [];
let registerInfo = [];

$("#surveySubmit").on("click", function() {
    //survey answers
    const yard = document.survey.yard.value;
    const otherPets = document.survey.otherPets.value;
    const kids = document.survey.kids.value;
    const size = document.survey.size.value;
    const female = document.survey.female.value;

})

$("#registerSubmit").on("click", function() {
    //registration info
    const firstName = document.getElementById("first-name");
    const middleInit = document.getElementById("middle-name");
    const lastName = document.getElementById("last-name");
    const email = document.getElementById("email");
    const streetAddy = document.getElementById("street-address");
    const city = document.getElementById("city");
    const state = document.getElementById("state");
    const zip = document.getElementById("zip-code");
    const pass = document.getElementById("password");
    const confirmPass = document.getElementById("confirm-password");
})
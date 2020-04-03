//function to show the hamburger menu
function show() {
  document.getElementById('hamburger').classList.toggle('active');
}

//function to set the site to the top when the site refreshes
window.onbeforeunload = function () {
  window.scrollTo(0,0);
};

// Get a reference to the page tags
//##################################
var get_model = d3.select("#selectModel");

var get_gender = d3.select("#selectGender");
var get_age = d3.select("#selectAge");

var get_from_hotspot = d3.select("#from_hotspot");
var get_visit_hotspot = d3.select("#visit_hotspot");

var get_pneumonia = d3.select("#pneumonia");
var get_fever = d3.select("#fever");
var get_cough = d3.select("#cough");
var get_sputum = d3.select("#sputum");
var get_chills = d3.select("#chills");
var get_malaise = d3.select("#malaise");
var get_breath = d3.select("#breath");
var get_fatique = d3.select("#fatigue");
var get_diarrhea = d3.select("#diarrhea");
var get_headache = d3.select("#headache");
var get_throatache = d3.select("#throatache");
var get_soreness = d3.select("#soreness");

var get_precondition = d3.select("#precondition");

var get_submit = d3.select("#submitAll");

var listModel = [];
var listGender = [];
var listAge = [];

listModel = ['Classification','Decision Tree','Random Forest','K-Nearest Neighbor']
listGender = ['Male','Female']
listAge = ['< 39 years old','40 - 49 years old','50 - 59 years old','60 - 69 years old','70 - 79 years old','> 80 years old']

console.log(listModel);
console.log(listGender);
console.log(listAge);

function loadDropDowns(myId, myshortList) {
    // var tbody = d3.select("tbody");
    var inputDate = d3.select(myId) 
   
    inputDate.html(" ");
  
    console.log(myshortList);
    var cell = inputDate.append("option").text(" ");
    
    myshortList.forEach((f) => {
      console.log(f);
      var cell = inputDate.append("option")
      cell.text(f);
  
      });
    };

// Fill dropdowns with shortLists
loadDropDowns("#selectModel",listModel);
loadDropDowns("#selectGender",listGender);
loadDropDowns("#selectAge",listAge);

// Lastly put together an array for the prediction models - modelArray needs all 0's and 1' equal to what the model is expecting

function preArray() {

    let modelArray = []

    // Get all inputElement values - NEEDS TO BE COMPLETED FOR ALL FEATURES
    let inputGender = d3.select("#selectGender").property("value");
    let inputAge = d3.select("#selectAge").property("value");
    let inputPneumonia = d3.select("#pneumonia").property("value");
    let inputFever = d3.select("#fever").property("value");
    let inputCough = d3.select("#cough").property("value");

    console.log(inputGender);
    console.log(inputAge);
    console.log(inputPneumonia);
    console.log(inputFever);
    console.log(inputCough);

    return modelArray

}

// WE HAVE TO THINK ABOUT THIS ONE.... On Submit the page should be redirected to an endpoint from FLASK
get_submit.on("click", function() {preArray()});

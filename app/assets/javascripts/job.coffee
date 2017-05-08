# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var editModal = document.getElementByID("editjobModal");
var editLink = document.getElementByID("editLink");
var updateButton = document.getElementById("editUpdate");


editLink.addEventListener("click", function(e){
   e.preventDefault();
   editModal.style.visibility = "block";
});

updateButton.addEventListener("click", function(){
   editModal.style.display = "none";

});

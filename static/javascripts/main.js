// Generic user

function User(age, pregnant) {
  this.age = age;
  this.pregnant = pregnant;
}

var AGE = 'age';
var PREGNANT = 'pregnant?'

$(document).ready(function() {

  // Switch between sections

  function setSection(to, from)
  {
    if (!(to.hasClass("active")))
    {  
      from.animate({"left":"-100%"},100,'linear')
      to.animate({"left":"0%"},100,'linear',function()
      {    
        from.css("left","100%");
        from.removeClass("active");    
        to.addClass("active");    
      });
    }
  }

  // Cookie Logic

  var user;

  $('#continue-page-1').click(function() {
    var age = $("#age-input").val();
    var pregnant = $('#pregnant-input').val()
    if (Cookies.enabled) {
      Cookies.set(AGE, age);
      Cookies.set(PREGNANT, pregnant);
    }
    user = new User(age, pregnant);
  });

  $('#continue-page-2').click(function() {

  });

  // Form logic here

  $('#age-input').keypress(function(e) {
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
      // Add animation here!
      return false;
    }
  });

  // Repopulation
  oldAge = Cookies.get(AGE);
  oldPregnant = Cookies.get(PRENANT);

  if (oldAge) { $('#age-input').text(oldAge); }
  if (oldPregnant) { $('#prenant-input').prop('checked', true); }

});


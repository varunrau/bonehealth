
$(document).ready(function() {
  // Repopulation
  repopulatePage1();
});

function repopulatePage1() {
  oldAge = Cookies.get(AGE);
  oldPregnant = Cookies.get(PREGNANT);

  if (oldAge) { $('#age-input').text(oldAge); }
  if (oldPregnant) { $('#prenant-input').prop('checked', true); }
}

$('#continue-page-1').click(function() {
  var age = $("#age-input").val();
  var pregnant = $('#pregnant-input').val()
  if (Cookies.enabled) {
    Cookies.se(AGE, age);
    Cookies.set(PREGNANT, pregnant);
  }
  user.age = age;
  user.pregnant = pregnant;
});


$('#age-input').keypress(function(e) {
  if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
    // Add animation here!
    return false;
  }
});

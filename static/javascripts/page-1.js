
$(document).ready(function() {
  // Repopulation
  $("#lame-pun").innerHTML = generateHumerusPuns();

  $('.age-input').keypress(function(e) {
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
      // Add animation here!
      return false;
    }
  });

  $('.gender-input').click(function() {
    var gender = $(this).html();
    if (gender == 'F') {
      $(this).html('M');
    } else {
      $(this).html('F');
    }
  });

  $('#joke').click(function() {
    var joke = generateHumerusPuns();
    $(this).children('#joke-text').html(joke);
  });

  $('#continue-page-1').click(function() {
    var age = $(".age-input").val();
    var pregnant = $('.pregnant-input').is(":checked");
    var gender = $('.gender-input').html() == "F" ? true : false;
    // var gender =
    if (Cookies.enabled) {
      Cookies.set(AGE, age);
      Cookies.set(PREGNANT, pregnant);
      Cookies.set(GENDER, gender);
    }
    user.age = age;
    user.pregnant = pregnant;
  });

  repopulatePage1();
});

function repopulatePage1() {
  console.log('hello');
  oldAge = Cookies.get(AGE);
  oldPregnant = Cookies.get(PREGNANT) == 'false' ? false : true;
  oldGender = Cookies.get(GENDER) == 'false' ? 'M' : 'F';

  if (oldAge) { $('.age-input').val(oldAge); }
  if (oldPregnant) { $('.pregnant-input').prop('checked', oldPregnant); }
  if (oldGender) { $('.gender-input').html(oldGender); }
}

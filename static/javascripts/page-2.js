
// Categories
var servings = Object.keys(user.servings);

$(document).ready(function() {
  // Repopulate fields from cookies
  repopulatePage2()
});

function repopulatePage2() {
  for (serving in servings) {
    oldServing = Cookies.get(serving);
    if (oldServing) { $("#" + serving).val(oldServing); }
  }
}

// Set cookies
$('#continue-page-2').click(function() {
  // Grab values and set cookies
  for (serving in servings) {
    var servingValue = $('#' + serving + 'Number').val();
    if (Cookies.enabled) {
      Cookies.set(serving, servingValue);
    }
    user.servings[serving] = +servingValue;
  }
  user.calcTotalServingSize();
  setPage3();
});

$('.add-serving').click(function() {
  var category = '#' + $(this).parent().attr('id') + 'Number';
  var currentNum = +$(category).val();
  $(category).val(currentNum + 1);
});

$('.subtract-serving').click(function() {
  var category = '#' + $(this).parent().attr('id') + 'Number';
  var currentNum = +$(category).val();
  $(category).val(currentNum - 1);
});

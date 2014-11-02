
// Categories
var servings = Object.keys(user.servings);

$(document).ready(function() {

  $('.up-arrow').click(function() {
    console.log('whatsupdog');
    var category = '#' + $(this).parent().attr('id') + 'Number';
    var currentNum = +$(category).val();
    $(category).val(currentNum + 1);
  });

  $('.down-arrow').click(function() {
    var category = '#' + $(this).parent().attr('id') + 'Number';
    var currentNum = +$(category).val();
    if (currentNum > 0) {
      $(category).val(currentNum - 1);
    }
  });

  // Set cookies
  $('#continue-page-2').click(function() {
    // Grab values and set cookies
    for (serving in servings) {
      ingredient = servings[serving];
      var servingValue = $('#' + ingredient + 'Number').val();
      if (Cookies.enabled) {
        Cookies.set(ingredient, servingValue);
      }
      user.servings[serving] = +servingValue;
    }
    setPage3();
  });

  // Repopulate fields from cookies
  repopulatePage2()
});

function repopulatePage2() {
  for (serving in servings) {
    var ingredient = servings[serving];
    var oldServing = Cookies.get(ingredient);
    if (oldServing) { $("#" + ingredient + "Number").val(oldServing); }
  }
}


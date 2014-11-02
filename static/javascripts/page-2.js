
// Categories
var servings = Object.keys(user.servings);

$(document).ready(function() {

  $('.up-arrow').click(function() {
    var ingredient = $(this).parent().attr('id');
    var category = '#' + ingredient + 'Number';
    var currentNum = +$(category).val();
    if (ingredient == "vegetable" || ingredient == "desserts") {
      $(category).val(currentNum + 0.5);
    } else {
      $(category).val(currentNum + 1);
    }
  });

  $('.down-arrow').click(function() {
    var ingredient = $(this).parent().attr('id');
    var category = '#' + ingredient + 'Number';
    var currentNum = +$(category).val();
    if (currentNum > 0) {
      if (ingredient == "vegetable" || ingredient == "desserts") {
        $(category).val(currentNum - 0.5);
      } else {
        $(category).val(currentNum - 1);
      }
    }
  });

  $('.no-negative').keypress(function(e) {
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
      return false;
    }
  });

  $('#back-page-1').click(function() {
    console.log("helo");
    if (Cookies.enabled) {
      Cookies.set(PAGE, 1);
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
        Cookies.set(PAGE, 3);
      }
      user.servings[ingredient] = +servingValue;
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


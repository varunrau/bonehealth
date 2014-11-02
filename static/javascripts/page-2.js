
// Categories
var servings = Object.keys(user.servings);

$(document).ready(function() {

  $('.up-arrow').click(function() {
    var categoryName = $(this).parent().attr('id');
    var category = '#' + $(this).parent().attr('id') + 'Number';
    var currentNum = +$(category).val();
    if (categoryName == "vegetables" || categoryName == "desserts") {
      currentNum += 0.5;
      $(category).val(currentNum);
    } else {
      currentNum += 1;
      $(category).val(currentNum);
    }
    setImage(categoryName, currentNum);
  });

  $('.down-arrow').click(function() {
    var categoryName = $(this).parent().attr('id');
    var category = '#' + categoryName + 'Number';
    var currentNum = +$(category).val();
    if (currentNum > 0) {
      if (categoryName == "vegetables" || categoryName == "desserts") {
        currentNum -= 0.5;
        $(category).val(currentNum);
      } else {
        currentNum -= 1;
        $(category).val(currentNum);
      }
    }
    setImage(categoryName, currentNum);
  });

  $('.no-negative').keypress(function(e) {
    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
      return false;
    }
    setImage(categoryName, currentNum);
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
      var category = servings[serving];
      var servingValue = $('#' + category + 'Number').val();
      if (Cookies.enabled) {
        Cookies.set(category, servingValue);
        Cookies.set(PAGE, 3);
        Cookies.set(category, servingValue);
      }
      user.servings[category] = +servingValue;
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



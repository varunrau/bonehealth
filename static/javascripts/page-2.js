
// Categories
var categories = Object.keys(user.categories);

$(document).ready(function() {
  // Repopulate fields from cookies
  repopulatePage2()
});

function repopulatePage2() {
  for (category in categories) {
    oldCategory = Cookies.get(category);
    if (oldCategory) {  }
  }
}

// Set cookies
$('#continue-page-2').click(function() {
  // Grab values and set cookies
  for (category in categories) {
    var categoryValue = $('#' + category).val();
    if (Cookies.enabled) {
      Cookies.set(category, categoryValue);
    }
    user.servings[category] = categoryValue;
  }
  user.calcTotalServingSize();
});


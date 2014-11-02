$(document).ready(function() {
  $("#back-page-1-2").click(function() {
    if (Cookies.enabled) {
      Cookies.set(PAGE, 1);
    }
  });
});

function setPage3() {
  user.group = user.findGroup();
  lower = user.group.lower;
  upper = user.group.upper;
  total = user.calcTotalServingSize();
  lack = total - lower;
  excess = upper - total;

  $('.total-calcium').html(total);
  if (lack < 0) setRecommendedMin();
  else if (excess < 0) setRecommendedMax();
  else setRecommendedReg();
  $('.minimum-calcium').html(Math.abs(lack));
  $('.maximum-calcium').html(Math.abs(excess));
}

function setRecommendedMin() {
  $('#bleh').show();
  $('#woo').hide();
  $('#too-much').hide();
  var minElement = getMinElement();
  var minElementPicture = minElement + "3.svg";
}

function getMinElement() {
  var minElement;
  var min = Number.MAX_VALUE;
  for (serving in user.servings) {
    amount = user.servings[serving]
    if (amount <= min) {
      min = amount;
      minElement = serving;
    }
  }
  return minElement;
}

function setRecommendedMax() {
  $('#bleh').hide();
  $('#woo').hide();
  $('#too-much').show();
  var maxElement = getMaxElement();
  var maxElementPicture = maxElement + "3.svg";
}

function getMaxElement() {
  var maxElement;
  var max = 0;
  for (serving in user.servings) {
    amount = user.servings[serving]
    if (amount >= max) {
      max = amount;
      maxElement = serving;
    }
  }
  return maxElement;
}

function setRecommendedReg() {
  $('#bleh').hide();
  $('#woo').show();
  $('#too-much').hide();
}

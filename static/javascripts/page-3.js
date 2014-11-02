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
  $('#total-calcium').html(total);
  if (lack < 0) { $('#above').html("below"); }
  $('#minimum-calcium').html(Math.abs(lack));
  if (excess < 0) { $('#below').html("above"); }
  $('#maximum-calcium').html(Math.abs(excess));
}


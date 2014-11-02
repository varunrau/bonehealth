// Generic user

var servingSizes = {
  'milk'        : 1,
  'yogurt'      : 1,
  'cheese'      : 1,
  'tofu'        : 4,
  'vegetables'  : 0.5,
  'sardines'    : 3
}

function User(age, pregnant) {
  this.age = age;
  this.pregnant = pregnant;
  this.servings = {
    'milk'        : 0,
    'yogurt'      : 0,
    'cheese'      : 0,
    'tofu'        : 0,
    'vegetables'  : 0,
    'sardines'    : 0
  }
  this.totalServingSize = 0;

  this.calcTotalServingSize = function() {
    this.totalServingSize = 0;
    for (var serving in this.servings) {
      this.totalServingSize += serving / servingSizes[serving];
    }
    return this.totalServingSize;
  }
}

var AGE = 'age';
var PREGNANT = 'pregnant?'

var user = new User();

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
});


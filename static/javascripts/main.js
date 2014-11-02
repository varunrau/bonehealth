// Generic user

var adultsBounds = {
  '19-50'   : {
    'lower' : 1000,
    'upper' : 2500
  },
  'MEN: 51-70' : {
    'lower' : 1000,
    'upper' : 2000
  },
  'WOMEN 51-70' : {
    'lower' : 1200,
    'upper' : 2000
  },
  '71+' : {
    'lower' : 1200,
    'upper' : 2000
  }
}

var kidsBounds = {
  'neonatals' : {
    'lower' : 200,
    'upper' : 1000
  },
  'infants' : {
    'lower' : 200,
    'upper' : 1500
  },
  '1-3' : {
    'lower' : 700,
    'upper' : 2500
  },
  '4-8' : {
    'lower' : 1000,
    'upper' : 2500
  },
  '9-18' : {
    'lower' : 1300,
    'upper' : 3000
  }
}

var pregnantBounds = {
  '14-18' : {
    'lower' : 1300,
    'upper' : 2000
  },
  '19-50+' : {
    'lower' : 1300,
    'upper' : 2000
  }
}
var servingSizes = {
  'dairy'        : 1,
  'desserts'     : 0.5,
  'vegetables'   : 0.5,
  'fish'         : 3,
  'cheese'       : 1,
  'CAFortifiedD' : 1
  // 'milk'        : 1,
  // 'yogurt'      : 1,
  // 'cheese'      : 1.5,
  // 'tofu'        : 4,
  // 'vegetables'  : 0.5,
  // 'fish'        : 3
}

var servingCalciums = {
  'dairy'        : 325,
  'desserts'     : 58,
  'vegetables'   : 52,
  'fish'         : 388,
  'cheese'       : 260,
  'CAFortifiedD' : 240
  // 'milk'        : 275,
  // 'yogurt'      : 375,
  // 'cheese'      : 1,
  // 'tofu'        : 375,
  // 'vegetables'  : 52,
  // 'fish'        : 38
}

function User(age, pregnant, gender) {
  var foods =
  {
    'dairy'        : 0,
    'desserts'     : 0,
    'vegetables'   : 0,
    'fish'         : 0,
    'cheese'       : 0,
    'CAFortifiedD' : 0
  }

  this.age = age;
  this.pregnant = pregnant;
  this.gender = gender; // true for w
  this.servings = foods;
  this.totalServingSize = 0;
  this.group = {
    'lower' : -1,
    'upper' : -1
  }

  this.calcTotalServingSize = function() {
    totalServingSize = 0;
    for (var serving in this.servings) {
      portion = this.servings[serving] / servingSizes[serving];
      totalServingSize += portion * servingCalciums[serving];
    }
    return parseInt(totalServingSize);
  }

  this.findGroup = function() {
    // Determine age group
    if (pregnant) {
      console.log('prgeers');
      if (age <= 18) {
        return pregnantBounds['14-18'];
      } else {
        return pregnantBounds['19-50+'];
      }
    }
    if (this.age <= 18) {
      if (this.age <= 1) {
        return kidsBounds['infants'];
      } else if (this.age <= 3) {
        return kidsBounds['1-3'];
      } else if (this.age <= 8) {
        return kidsBounds['4-8'];
      } else if (this.age <= 18) {
        return kidsBounds['9-18'];
      }
    } else {
      if (age <= 50) {
        return adultsBounds['19-50'];
      }
      if (gender) {
        return adultsBounds['71+'];
      } else {
        return adultsBounds['MEN: 51-70'];
      }
    }
  }
}

var AGE = 'age';
var PREGNANT = 'pregnant?';
var GENDER = 'gender';
var PAGE = 'page'
// var DAIRY = 'dairy';
// var DESSERTS = 'desserts';
// var VEGETABLES = 'vegetables';
// var FISH = 'fish';
// var CHEESE = 'cheese';
// var CAFORTIFIEDD = 'CAFortifiedD';


var user = new User();

function setSection(to, from) {
  if (!(to.hasClass("active"))) { 
    from.animate({"left":"-100%"},100,'linear')
    to.animate({"left":"0%"},100,'linear',function()
    {    
      from.css("left","100%");
      from.removeClass("active");    
      to.addClass("active");    
    });
  }
}

function restoreUser() {
  if (Cookies.enabled) {
    oldAge = +Cookies.get(AGE);
    oldPreg = Cookies.get(PREGNANT);
    oldGender = Cookies.get(GENDER);
    oldPage = +Cookies.get(PAGE);

    if (oldAge) user.age = oldAge;
    if (oldPreg) user.pregnant = oldPreg == "false" ? false : true;
    if (oldGender) {
      if (oldGender == "false") disablePregnancy();
      user.gender = oldGender == "false" ? false : true;
    }

    for (serving in user.servings) {
      var amount = isNaN(Cookies.get(serving)) ? 0 : Cookies.get(serving)
      user.servings[serving] = amount;
      setImage(serving, amount);
    }

    if (oldPage) {
      if (oldPage == 1) { setSection($('#one'), $('.active')); }
      else if (oldPage == 2) { setSection($('#two'), $('.active')); }
      else if (oldPage == 3) { setSection($('#three'), $('.active')); }
    }

    setPage3();
  }
}
// Updates the image
function setImage(category, numServings) {
  var image = $("#" + category + "Image");
  if (((category == "vegetables" || category == "desserts") && numServings <= 0.5)
    || !(category == "vegetables" || category == "desserts") && numServings <= 1) {
    image.attr("src", category + "1.svg");
  } else if (numServings <= 3 && !(category == "vegetables" || category == "desserts")
    || ((category == "vegetables" || category == "desserts") && numServings <= 1.5)) {
    image.attr("src", category + "2.svg");
  } else {
    image.attr("src", category + '3.svg');
  }
}

function disablePregnancy() {
  $('.pregnant-input').prop('disabled', function() { return true; })
  $('.pregnant-input').prop('checked', false);
  $('.switch').css('opacity', 0.5);
}

function enablePregnancy() {
  $('.pregnant-input').prop('disabled', function() { return false; })
  $('.switch').css('opacity', 1);
}

// Categories
var servings = Object.keys(user.servings);

$(document).ready(function () {
  restoreUser();
});

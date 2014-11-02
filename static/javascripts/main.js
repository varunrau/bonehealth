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
  'WOMEN: 51-70' : {
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
  'cheesy foods' : 1,
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
  this.age = age;
  this.pregnant = pregnant;
  this.gender = gender; // true for w
  this.servings = {
    'dairy'        : 325,
    'desserts'     : 58,
    'vegetables'   : 52,
    'fish'         : 388,
    'cheese'       : 260,
    'CAFortifiedD' : 240
  }
  this.totalServingSize = 0;
  this.group = {
    'lower' : -1,
    'upper' : -1
  }

  this.calcTotalServingSize = function() {
    totalServingSize = 0;
    for (var serving in this.servings) {
      portion = serving / servingSizes[serving];
      totalServingSize += porition * servingCalciums[serving];
    }
    return totalServingSize;
  }

  this.findGroup = function() {
    // Determine age group
    if (pregnant) {
      if (age <= 18) {
        return pregnantBounds['14-18'];
      } else {
        return pregnantBounds['19-50+'];
      }
    }
    if (age <= 18) {
      if (age <= 1) {
        return kidsBounds['infants'];
      } else if (age <= 3) {
        return kidsBounds['1-3'];
      } else if (age <= 8) {
        return kidsBounds['4-8'];
      } else if (age <= 18) {
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


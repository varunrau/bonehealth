<!DOCTYPE html>
<html>
<head>
  <!--
  LIGHT BLUE: 53beeb
  BLUE: 009ddc
  DARK BLUE: 0077c0
  -->
  <link href='https://fonts.googleapis.com/css?family=Squada+One' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>
  <link rel='stylesheet' href='main.css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="cookies.js"></script>
  <script src="humerus.js"></script>
  <script src="main.js"></script>
  <script src="page-1.js"></script>
  <script src="page-3.js"></script>
  <script src="page-2.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
  <title> The Calc(ium)ulator </title>
</head>
<body>
  <div id="container">
    <!-- First 'page' -->
    <section id="one" class="active">
    <div id="joke-square"></div>
    <div id="joke"> <p id="joke-text"> Welcome to the calc(ium)ulator! It checks how healthy your diet is! Also, click this tooltip for some (humerus) puns! </p> </div>
    <div id="joke-square-2"></div>
    <img id="skelly" src="skelly.svg"></img>
    <img id="machine" src="machine.svg"></img>
    <h1 class="header"> THE CALC<span class="light-blue">IUM</span>ULATOR </h1>
    <div class="content">
      <div class="wrapper">
        <p class="section-header"> Gender </p>
        <div class="gender-input">F</div>
      </div>
      <div class="wrapper">
        <p class="section-header"> Age </p>
        <input class="age-input" type="number" value="18">
      </div>
      <div class="wrapper">
        <p class="section-header"> Pregnant </p>
        <div class="switch">
          <input id="cmn-toggle-1" class="cmn-toggle cmn-toggle-round pregnant-input" type="checkbox">
          <label for="cmn-toggle-1"></label>
          <h2 class="yes"> YES </h2>
          <h2 class="no"> NO </h2>
        </div>
      </div>
    </div>
    <div id="continue-page-1" class="next" onclick="setSection($('#two'), $('.active'));"> CONTINUE </div>
    </section>

    <!-- Page 2 -->
    <section id="two">
      <div id="tip-square"></div>
      <div id="tip-bubble"> <p id="bubble-text"> Tell us what you ate today! </p> </div>
      <div id="tip-square-2"></div>
      <img id="peek" src="peeking.svg"></img>
      <div id="box-container">
        <div class="box-wrapper left">
          <h2 class="box-header">General Dairy <span class="light-blue">(Cups)</span> </h2>
          <div class="box">
            <img class="box-img" id="dairyImage" src="dairy1.svg">
            <div class="number" id="dairy">
              <img class="up-arrow" src="arrow.svg">
              <input type="number" id="dairyNumber" class="middle-num no-negative" value="0">
              <img class="down-arrow" src="arrow.svg">
            </div>
          </div>
        </div>
        <div class="box-wrapper middle">
          <h2 class="box-header">Frozen Desserts <span class="light-blue">(Servings)</span> </h2>
          <div class="box">
            <img class="box-img" id="dessertsImage" src="desserts1.svg">
            <div class="number" id="desserts">
              <img class="up-arrow" src="arrow.svg">
              <input type="number" id="dessertsNumber" class="middle-num no-negative" value="0">
              <img class="down-arrow" src="arrow.svg">
            </div>
          </div>
        </div>
        <div class="box-wrapper right">
          <h2 class="box-header">Vegetables <span class="light-blue">(Cups)</span> </h2>
          <div class="box">
            <img class="box-img" id="vegetablesImage" src="vegetables1.svg">
            <div class="number" id="vegetables">
              <img class="up-arrow" src="arrow.svg">
              <input type="number" id="vegetablesNumber" class="middle-num no-negative" value="0">
              <img class="down-arrow" src="arrow.svg">
            </div>
          </div>
        </div>
        <div class="box-wrapper left">
          <h2 class="box-header">Fish and Nuts <span class="light-blue">(Ounces)</span> </h2>
          <div class="box">
            <img class="box-img" id="fishImage" src="fish1.svg">
            <div class="number" id="fish">
              <img class="up-arrow" src="arrow.svg">
              <input type="number" id="fishNumber" class="middle-num no-negative" value="0">
              <img class="down-arrow" src="arrow.svg">
            </div>
          </div>
        </div>
        <div class="box-wrapper middle">
          <h2 class="box-header">Cheese Entrees <span class="light-blue">(Pieces)</span> </h2>
          <div class="box">
            <img class="box-img" id="cheeseImage" src="cheese1.svg">
            <div class="number" id="cheese">
              <img class="up-arrow" src="arrow.svg">
              <input type="number" id="cheeseNumber" class="middle-num no-negative" value="0">
              <img class="down-arrow" src="arrow.svg">
            </div>
          </div>
        </div>
        <div class="box-wrapper right">
          <h2 class="box-header">Fortified Drinks <span class="light-blue">(Cups)</span> </h2>
          <div class="box">
            <img class="box-img" id="CAFortifiedDImage" src="CAFortifiedD1.svg">
            <div class="number" id="CAFortifiedD">
              <img class="up-arrow" src="arrow.svg">
              <input type="number" id="CAFortifiedDNumber" class="middle-num no-negative" value="0">
              <img class="down-arrow" src="arrow.svg">
            </div>
          </div>
        </div>
      </div>
      <div id="back-page-1" class="next next-float" onclick="setSection($('#one'), $('.active'));"> BACK </div>
      <div id="continue-page-2" class="next next-float" onclick="setSection($('#three'), $('.active'));"> SUBMIT </div>
    </section>

    <!-- Third page -->
    <section id="three">
      <div id="sum-container">
        <div id="woo">
          <div class="sum-result">
            <img class="main-img" src="too-perfect.svg">
            <p class="sum-text"> Looks like your calcium intake is at normal and healthy levels. Keep up the good work! </p>
          </div>
          <div class="sum-graph">
            <div class="sum-graph-box">
              <p class="no-margin"> You've consumed </p>
              <h1> <span class="total-calcium">0</span> MG </h1>
              <p class="no-margin"> of calcium today! </p>
              <br><br>
              <h1 class="ok"> <span class="minimum-calcium">0</span> MG </h1>
              <p class="no-margin"> above your mininum. </p>
              <h1 class="ok"> <span class="maximum-calcium">0</span> MG </h1>
              <p class="no-margin"> below your max. </p>
            </div>
          </div>
        </div>
        <div id="bleh" style="display: none;">
          <div class="sum-result">
            <img class="main-img" src="too-little.svg">
            <p class="sum-text"> The calcium intake in your diet is too low! Consume more dairy and consider supplements! </p>
          </div>
          <div class="sum-graph">
            <div class="sum-graph-box">
              <p class="no-margin"> You've consumed </p>
              <h1> <span class="total-calcium">0</span> MG </h1>
              <p class="no-margin"> of Calcium today! </p>
              <h1 class="ah"> <span class="minimum-calcium">0</span> MG </h1>
              <p class="no-margin"> <span class="above">below</span> your mininum. </p>
              <h1 class="food"><img class="sum-img" src="dairy1.svg"><span class="sum-img-h">DAIRY</span></h1>
              <p class="no-margin"> is a food you lack! </p>
            </div>
          </div>
        </div>
        <div id="too-much" style="display: none;">
          <div class="sum-result">
            <img class="main-img" src="too-over.svg">
            <p class="sum-text"> Your calcium intake is too high! Be careful with dairy and certain proteins to avoid side effects! </p>
          </div>
          <div class="sum-graph">
            <div class="sum-graph-box">
              <p class="no-margin"> You've consumed </p>
              <h1> <span class="total-calcium">0</span> MG </h1>
              <p class="no-margin"> of calcium today! </p>
              <br>
              <h1 class="ah"> <span class="maximum-calcium">0</span> MG </h1>
              <p class="no-margin"> above your max. </p>
              <h1 class="food"><img class="sum-img" src="dairy1.svg"><span class="sum-img-h">DAIRY</span></h1>
              <p class="no-margin"> is good to cut back on! </p>
            </div>
          </div>
        </div>
      </div>
      <div id="back-page-1-2" class="next next-float" onclick="setSection($('#one'), $('.active'));"> RETURN </div>
      <div class="next next-float" onclick="window.open('http://americanbonehealth.org/what-you-should-know/nutrition');"> LEARN MORE </div>
    </section>
    <!--<img id="about" class="nav" src="profile.svg">-->
    <div id="about-square" onclick="toggleNav()"></div>
    <div id="about-text" onclick="toggleNav()">
      <p class="no-margin px20">This app is based on The Rule of 300, an easy way to calculate daily intake: <span class="light-blue"> Daily calcium = (# of servings of dairy / fortified juice) x 300 + 300.</span> </p>
    </div>
    <div id="about-square-2" onclick="toggleNav()"></div>
    <img id="question" class="nav" src="question.svg" onclick="toggleNav()">
  </div>
</body>
</html>

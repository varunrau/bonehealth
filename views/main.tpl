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
    <div id="joke"> <p id="joke-text"> Welcome to the Calc(ium)ulator! It checks how healthy your diet is! Also, click this tooltip for some (humerus) puns! </p> </div>
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
      <div id="box-container">
        <div class="box-wrapper left">
          <h2 class="box-header">General Dairy <span class="light-blue">(Cups)</span> </h2>
          <div class="box">
            <img class="box-img" src="broccoli.svg">
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
            <img class="box-img" src="broccoli.svg">
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
            <img class="box-img" src="broccoli.svg">
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
            <img class="box-img" src="broccoli.svg">
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
            <img class="box-img" src="broccoli.svg">
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
            <img class="box-img" src="broccoli.svg">
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
    </section>
  </div>
</body>
</html>

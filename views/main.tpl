<!DOCTYPE html>
<html>
<head>
  <!--
  LIGHT BLUE: 53beeb
  BLUE: 009ddc
  DARK BLUE: 0077c0
  -->
  <meta property="og:url" content="http://calciumulator.herokuapp.com/"/>
  <meta property="og:title" content="Calc(ium)ulator"/>
  <meta property="og:type" content="website"/>
  <meta property="og:description" content="Keep your bones healthy and your body happy!"/>
  <meta property="og:image" content="http://calciumulator.herokuapp.com//screen-shot.png"/>
  <link href='https://fonts.googleapis.com/css?family=Squada+One' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>
  <link rel="icon" type="image/png" href="favic.png">
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
    % include('page1.tpl')
    <!-- Page 2 -->
    % include('page2.tpl')
    <!-- Third page -->
    % include('page3.tpl')
    </section>
    <!--<img id="about" class="nav" src="profile.svg">-->
    <div id="about-square" onclick="toggleNav()"></div>
    <div id="about-text" onclick="toggleNav()">
      <p class="no-margin px20">This app is based on The Rule of 300, an easy way to calculate daily intake: <span class="light-blue"> Daily calcium = (# of servings of dairy / fortified juice) x 300 + 300.</span> The extra 300 mg comes from a balanced diet!</p>
    </div>
    <div id="about-square-2" onclick="toggleNav()"></div>
    <img id="question" class="nav" src="question.svg" onclick="toggleNav()">
  </div>
</body>
</html>

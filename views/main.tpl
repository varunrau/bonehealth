<!DOCTYPE html>
<html>
<head>
  <!--
  LIGHT BLUE: 53beeb
  BLUE: 009ddc
  DARK BLUE: 0077c0
  -->
  <link href='http://fonts.googleapis.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Oxygen:300,400,700' rel='stylesheet' type='text/css'>
  <link rel='stylesheet' href='main.css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="calculator.js"></script>
  <script src="cookies.js"></script>
  <script src="main.js"></script>
  <script src="page-1.js"></script>
  <script src="page-3.js"></script>
  <script src="page-2.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
  <title> The Calc(ium)ulator </title>
</head>
<body>
  <div id="container">
    <section id="one" class="active">
      <h1 class="white"> THE CALC(IUM)ULATOR </h1>
      <div class="next" onclick="setSection($('#two'), $('.active'));"></div>
    </section>
    <section id="two">
      <div class="next" onclick="setSection($('#three'), $('.active'));"></div>
    </section>
    <section id="three">
    </section>
  </div>
</body>
</html>

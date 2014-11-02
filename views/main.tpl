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
<<<<<<< Updated upstream
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="calculator.js"></script>
  <script src="cookies.js"></script>
  <script src="main.js"></script>
  <script src="page-1.js"></script>
  <script src="page-2.js"></script>
  <script src="page-3.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
  <title> The Calc(ium)ulator </title>
  <style>
  body, html {
    padding: 0;
    margin: 0;
    height: 100%;
    color: #333;
  }

  input:focus,
  select:focus,
  textarea:focus,
  button:focus {
      outline: none;
  }

  h1, h2, h3, p {
    margin: 0px;
  }

  h1 {
    font-family: 'Oswald', sans-serif;
    font-size: 100px;
    font-weight: 700;
  }

  .white {
    color: #fff;
  }

  #container {
    position: absolute;
    top: 0px;
    left: 0px;
    right: 0px;
    bottom: 0px;
    overflow: hidden;
    background: transparent;
  }

  #container section {
    box-sizing: border-box;
    position: absolute;
    width: 100%;
    height: 100%;
    left: 100%;
  }

  #container section:nth-child(1) {
    left: 0%;
  }

  #one {
    background: #009ddc;
  }

  input[type="text"] {
    padding: 10px 15px 10px 15px;
    border: none;
  }

  input[type="submit"] {
    border: none;
  }

  input[type="submit"]:hover {
    cursor: pointer;
  }

  .next {
    padding: 15px 15px 10px 15px;
    width: 250px;
    font-size: 24px;
    background: #009ddc;
  }
  </style>
=======
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="main.js"></script>
  <script src="calculator.js"></script>
  <script src="cookies.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
  <title> The Calc(ium)ulator </title>
>>>>>>> Stashed changes
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

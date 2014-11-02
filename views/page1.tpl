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

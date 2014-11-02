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

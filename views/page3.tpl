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

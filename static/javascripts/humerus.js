function generateHumerusPuns() {
  var lols = ["Q: What do you call a skeleton detective?\n\n A: Sherlock Bones",
              "(We're trying so hard tibia punny)",
              "Q: What instrument does a skeleton play? \n\nA: A trombone!",
              "Q: What do skeletons say before they eat? \n\nA: Bone Appetit!",
              "Q: Why did the skeleton run into the forest? \n\nA: He was bone to be wild",
              "Q: What do skeletons order in restaurants? \n\nA: Spare Ribs!",
              "Q: How do skeletons call their friends? \n\nA: On the telebone!",
              "Q: What do you call a stupid skeleton? \n\nA: A bone head!",
              "Q: How did skeletons send their letters in the old days? \n\nA: By bone-y express!",
              "Q: What happened to the skeleton who stayed by the fire too long ? \n\nA: He became bone dry!",
              ];
  var random = Math.floor(Math.random() * lols.length)
  return lols[random].replace(/\n/g, '<br/>');
}

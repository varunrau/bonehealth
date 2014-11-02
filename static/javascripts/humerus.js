function generateHumerusPuns() {
  var lols = ["Q: What do you call a skeleton detective? A: Sherlock Bones",
              "We're trying so hard tibia punny",
              "Q: What instrument does a skeleton play? A: A trombone!",
              "Q: What do skeletons say before they eat? A: Bone Appetit!",
              "Q: Why did the skeleton run into the forest? A: He was bone to be wild",
              "Q: What do skeletons order in restaurants? A: Spare Ribs!",
              "Q: How do skeletons call their friends? A: On the telebone!",
              "Q: What do you call a stupid skeleton? A: A bone head!",
              "Q: How did skeletons send their letters in the old days? A: By bone-y express!",
              "Q: What happened to the skeleton who stayed by the fire too long ? A: He became bone dry!",
              ];
  var random = Math.ceil(Math.random() * lols.length)
  return lols[random];
}

function Elephant(name, height, tricks) {

  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} goes phrRRRRRRRRRRR!!!!!!!`);
}

Elephant.prototype.grow = function() {
  this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
}

Elephant.prototype.play = function() {
  let trick = this.tricks[Math.floor(Math.random()*this.tricks.length)];
  console.log(`${this.name} is ${trick}`);
}

// let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
// ellie.trumpet();
// ellie.grow();
// console.log(ellie.height);
// ellie.addTrick("watching tv");
// ellie.play();


function paradeHelper(elephant) {
  console.log(`${elephant.name} is trotting by!`);
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

function elephantParade() {
  herd.forEach(paradeHelper);
};
elephantParade();

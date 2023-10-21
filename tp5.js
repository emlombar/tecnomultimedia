// Emma Lombar
// Comision 1
// https://youtu.be/fZiMhR61SuU

let ElMejorJuegoDelMundo;

function setup() {
  createCanvas(470, 600);
  ElMejorJuegoDelMundo = new Principal();
}
function draw() {
  ElMejorJuegoDelMundo.dibuja();
  ElMejorJuegoDelMundo.actualiza();
}

function keyPressed() {
  ElMejorJuegoDelMundo.teclas();
}

function verde () {
  fill(0, 118, 11);
  noStroke();
  rectMode(CORNER);
  rect(175, 75, 450, 50);
  rect(0, 276, width, 48);
  rect(0, 476, width, 80);
}

function vida() {
  if (vidas == 3) {
    image(gato [0], 576, 13);
    image(gato [0], 641, 13);
    image(gato [0], 706, 13);
  } else if (vidas == 2) {
    image(gato [0], 576, 13);
    image(gato [0], 641, 13);
  } else if (vidas == 1) {
    image(gato [0], 576, 13);
  } else if (vidas == 0) {
    juego = 'perdiste';
  }
}

function salva() {

  if (salvados == 1) {
    image(gato [1], 175, 75);
  } else if (salvados == 2) {
    image(gato [1], 175, 75);
    image(gato [1], 375, 75);
  } else if (salvados == 3) {
    image(gato [1], 175, 75);
    image(gato [1], 375, 75);
    image(gato [1], 575, 75);
    juego = 'ganaste';
  }
}


//michi
function michiUp  (x, y) {
  fill(245, 124, 0);
  noStroke();
  rectMode (CENTER);
  rect (x, y-15, 15, 12); //cabeza
  rect(x, y, 20, 28);  //cuerpo
  rect(x, y+15, 5, 20 ); //cola
}
function michiDown  (x, y) {
  fill(245, 124, 0);
  noStroke();
  rectMode (CENTER);
  rect (x, y+15, 15, 12); //cabeza
  rect(x, y, 20, 28);  //cuerpo
  rect(x, y-15, 5, 20 ); //cola
}
function michiLeft  (x, y) {
  fill(245, 124, 0);
  noStroke();
  rectMode (CENTER);
  rect (x-15, y, 12, 15); //cabeza
  rect(x, y, 28, 20);  //cuerpo
  rect(x+15, y, 20, 5 ); //cola
}
function michiRight  (x, y) {
  fill(245, 124, 0);
  noStroke();
  rectMode (CENTER);
  rect (x+15, y, 12, 15); //cabeza
  rect(x, y, 28, 20);  //cuerpo
  rect(x-15, y, 20, 5 ); //cola
}

function keyPressed() {

  if (keyCode === RIGHT_ARROW && mx < 750) {
    mx += 50;
    michi= michiRight;
  } else if (keyCode === LEFT_ARROW && mx > 50) { // limitar el borde izquierdo
    mx -= 50;
    michi= michiLeft;
  } else if (keyCode === UP_ARROW && my > 100) {
    my -= 50;
    puntos +=25;
    michi= michiUp;
  } else if (keyCode === DOWN_ARROW && my < 500) { // limitar el borde izquierdo
    my += 50;
    puntos -=25;
    michi= michiDown;
  }

  if (key == 'x' && estados === 'menu') {
    estados = 'juego';
  } else if (key == 'c' && estados === 'menu') {
    estados = 'tutorial';
  } else if (key == 'v' && estados === 'menu') {
    estados = 'creditos';
  }

  if (keyCode === ESCAPE && estados === 'tutorial') {
    estados = 'menu';
  } else if (keyCode === ESCAPE && estados === 'creditos') {
    estados = 'menu';
  }

  if (keyCode === ESCAPE && juego === 'perdiste') {
    estados = 'menu';
    juego = 'proceso';
  } else if (keyCode === ESCAPE && juego === 'ganaste') {
    estados = 'menu';
    juego = 'proceso';
  }
}

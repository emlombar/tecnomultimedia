class Jugador {

  constructor(x, y) {
    this.posX = x;
    this.posY = y;
    this.ancho = 60;
    this.alto = 98;
    this.carga();
  }


  dibuja() {
    image(this.tipito, this.posX, this.posY, this.ancho, this.alto);
  }

  mover(tecla, izquierda, derecha) {
    if (tecla === izquierda && this.posX > 15) {
      this.posX -= 95;
    } else if (tecla === derecha && this.posX < 395) {
      this.posX += 95;
    }
  }

  carga() {
    this.tipito = loadImage("data/personaje0.png");
  }
}

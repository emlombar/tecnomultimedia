class Principal {

  constructor () {
    this.perY = 278;
    this.perX = 205;
    this.hiY = 50;

    this.jugador = new Jugador(this.perX, this.perY);
    this.hi = new HombreIlustrado(this.hiY);

    this.piedra = [];
    for ( let i = 0; i < 5; i++ ) {
      this.piedra.push(new Piedra(15 + i*95, random(600, 900)));
    }

    this.cuenta = 0;

    this.fondo = [];
    this.carga();

    this.fondoy = 0;
    this.estado = "menu";
  }
  ///////////////////
  actualiza() {
    if ( this.estado == "jugando" ) {
      this.cuenta += 0.3;
      if (this.cuenta >= 440) {
        this.cuenta = 440;
      }
      if (this.cuenta >= 440) {
        this.hiY -= 2;
      }
      if (this.fondoy < -1000) {
        this.fondoy = 0;
      }
      this.fondoy -= 3;
      for (let i = 0; i < 5; i++) {
        this.piedra[i].actualiza();
        this.piedra[i].tropiezo(this.jugador);
      }
    }
  }
  ///////////////////
  dibuja() {

    if ( this.estado == "menu" ) {
      background(255);
      image(this.fondo [0], 0, 0)
    } else if ( this.estado == "jugando" ) {
      background(255);
      image(this.fondo [1], 0, this.fondoy);

      for (let i = 0; i < 5; i++) {
        this.piedra[i].dibuja();
      }
      this.hi.dibuja(this.hiY);
      this.jugador.dibuja();

      fill (255);
      rect (15, 15, 440, 10);
      fill (0, 255, 0);
      rect (15, 15, this.cuenta, 10);

      if (this.hiY <= -100) {
        this.estado = "ganaste";
      }
      if (this.jugador.posY<=80) {
        this.estado= 'perdiste';
      }
    } else if ( this.estado == "ganaste" ) {
      image(this.fondo [3], 66, 241);
    } else if ( this.estado == "perdiste" ) {
      image(this.fondo [2], 66, 241);
    }
  }
  ///////////////////
  carga() {
    for ( let i = 0; i < 4; i++ ) {
      this.fondo.push( loadImage('data/fondo' +i+ '.png'));
    }
  }
  ///////////////////
  teclas() {
    if ( this.estado == "jugando" ) {
      this.jugador.mover( keyCode, LEFT_ARROW, RIGHT_ARROW);
      this.hi.mover( keyCode, LEFT_ARROW, RIGHT_ARROW);
    }
    if ( this.estado == "menu" ) {
      if ( keyCode == ENTER ) {
        this.estado = "jugando";
      }
    }
    if ( this.estado == "perdiste" ) {
      if ( keyCode == ENTER ) {
        this.reinicio();
      }
    }
    if ( this.estado == "ganaste" ) {
      if ( keyCode == ENTER ) {
        this.reinicio();
      }
    }
  }
  ////////////////
  reinicio() {
    this.perY = 278;
    this.hiY = 50;
    this.cuenta = 0;
    this.estado = "menu";

    this.jugador = new Jugador(this.perX, this.perY);
    this.hi = new HombreIlustrado(this.hiY);
    this.piedra = [];
    for (let i = 0; i < 5; i++) {
      this.piedra.push(new Piedra(15 + i * 95, random(600, 900)));
    }
  }
}

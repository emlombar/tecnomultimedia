// Emma Lombar
// Comision 1
// https://youtu.be/r2BzZJ6rZvU

PImage [] fondos;
PImage boton, flecha;
String estado;
String [] cuento = new String [21];
PFont titulo, descripcion;

void setup() {
  size (600, 600);
  boton = loadImage ("boton.png");
  flecha = loadImage ("flecha.png");
  fondos = new PImage [21];
  estado = "pantalla menu1";
  titulo = loadFont ("SunriseInternationalDemo-48.vlw");
  descripcion = loadFont ("212LeahleeSans-48.vlw");
  rectMode(CENTER);
  textAlign (CENTER);
  textFont (titulo);


  for (int i=0; i<fondos.length; i++) {
    fondos [i] = loadImage ( "fondo"+i+".png");
  }

  cuento = loadStrings("cuento.txt");
  for (int t=0; t<cuento.length; t++) {
  }
}

void draw() {

  if (estado.equals("pantalla menu1")) {
    image (fondos [0], 0, 0, 600, 600);

    noStroke();
    fill (0, 75);
    rect (300, 205, 270, 130, 10);

    fill (215, 176, 178);
    textSize (40);
    text (" El Hombre Ilustrado ", 300, 200);
    textSize (30);
    text (" por Ray Bradbury ", 300, 240);

    stroke (100);
    rect (150, 450, 125, 75, 5);
    rect (450, 450, 125, 75, 5);

    fill (0);
    textSize (30);
    text (" Inicio ", 150, 455);
    text (" Creditos ", 450, 455);
  }
  if (estado.equals("pantalla menu2")) {
    image (fondos [20], 0, 0, 600, 600);

    noStroke();
    fill (0, 75);
    rect (300, 205, 270, 130, 10);

    fill (215, 176, 178);
    textSize (40);
    text (" El Hombre Ilustrado ", 300, 200);
    textSize (30);
    text (" por Ray Bradbury ", 300, 240);

    stroke (100);
    rect (150, 450, 125, 75, 5);
    rect (450, 450, 125, 75, 5);

    fill (0);
    textSize (30);
    text (" Inicio ", 150, 455);
    text (" Creditos ", 450, 455);
  }
  if (estado.equals("pantalla creditos1")) {
    image (fondos [19], 0, 0, 600, 600);
    image (flecha, 10, 10, 50, 50);
  }

  if (estado.equals("pantalla creditos2")) {
    image (fondos [18], 0, 0, 600, 600);
    image (flecha, 10, 10, 50, 50);
  }

  if (estado.equals("pantalla 1")) {
    image (fondos [1], 0, 0, 600, 600);

    push();
    fondito(70, 120);
    text(cuento[1], 300, 70, 490, 110);
    pop();
  }
  if (estado.equals("pantalla 2")) {
    image (fondos [2], 0, 0, 600, 600);
    image (boton, 70, 450, 150, 75);
    image (boton, 370, 450, 150, 75);

    push();
    fondito(60, 100);
    text(cuento[2], 300, 60, 490, 90);
    pop();

    fill (0);
    textSize (30);
    text ("Si, por \n alla", 145, 485);
    text ("Temo \n que no", 445, 485);
  }
  if (estado.equals("pantalla 3")) {
    image (fondos [3], 0, 0, 600, 600);
    image (boton, 185, 420, 230, 110);

    push();
    fondito( 50, 80);
    text(cuento[3], 300, 50, 490, 70);
    pop();

    fill (0);
    textSize (30);
    text ("¿Queres un final \n diferente?", 300, 470);
  }
  if (estado.equals("pantalla 4")) {
    image (fondos [4], 0, 0, 600, 600);

    push();
    fondito( 70, 120);
    text(cuento[4], 300, 70, 490, 110);
    pop();
  }
  if (estado.equals("pantalla 5")) {
    image (fondos [5], 0, 0, 600, 600);

    push();
    fondito( 70, 120);
    text(cuento[5], 300, 70, 490, 110);
    pop();
  }
  if (estado.equals("pantalla 6")) {
    image (fondos [6], 0, 0, 600, 600);

    push();
    fondito( 60, 100);
    text(cuento[6], 300, 60, 490, 90);
    pop();
  }
  if (estado.equals("pantalla 7")) {
    image (fondos [7], 0, 0, 600, 600);

    push();
    fondito( 70, 120);
    text(cuento[7], 300, 70, 490, 110);
    pop();
  }
  if (estado.equals("pantalla 8")) {
    image (fondos [8], 0, 0, 600, 600);

    push();
    fondito( 60, 100);
    text(cuento[8], 300, 60, 490, 90);
    pop();
  }
  if (estado.equals("pantalla 9")) {
    image (fondos [9], 0, 0, 600, 600);

    push();
    fondito( 90, 160);
    text(cuento[9], 300, 90, 490, 150);
    pop();
  }
  if (estado.equals("pantalla 10")) {
    image (fondos [10], 0, 0, 600, 600);

    push();
    fondito( 80, 140);
    text(cuento[10], 300, 80, 490, 130);
    pop();
  }
  if (estado.equals("pantalla 11")) {
    image (fondos [11], 0, 0, 600, 600);

    push();
    fondito( 90, 160);
    text(cuento[11], 300, 90, 490, 150);
    pop();
  }
  if (estado.equals("pantalla 12")) {
    image (fondos [12], 0, 0, 600, 600);

    push();
    fondito( 100, 180);
    text(cuento[12], 300, 100, 490, 170);
    pop();
  }
  if (estado.equals("pantalla 13")) {
    image (fondos [13], 0, 0, 600, 600);

    push();
    fondito( 90, 160);
    text(cuento[13], 300, 90, 490, 150);
    pop();
  }
  if (estado.equals("pantalla 14")) {
    image (fondos [14], 0, 0, 600, 600);

    push();
    fondito( 70, 120);
    text(cuento[14], 300, 70, 490, 110);
    pop();
  }
  if (estado.equals("pantalla 15")) {
    image (fondos [15], 0, 0, 600, 600);
    image (boton, 70, 450, 150, 75);
    image (boton, 370, 450, 150, 75);

    push();
    fondito( 100, 180);
    text(cuento[15], 300, 100, 490, 170);
    pop();

    fill (0);
    textSize (30);
    text ("Seguir \n durmiendo", 145, 485);
    text ("Correr", 445, 487);
  }
  if (estado.equals("pantalla 16")) {
    image (fondos [16], 0, 0, 600, 600);
    image (boton, 185, 420, 230, 110);

    push();
    fondito( 90, 160);
    text(cuento[16], 300, 90, 490, 150);
    pop();

    fill (0);
    textSize (30);
    text (" ¿Queres un final \n diferente? ", 300, 470);
  }
  if (estado.equals("pantalla 17")) {
    image (fondos [17], 0, 0, 600, 600);
    image (boton, 185, 420, 230, 110);

    push();
    fondito( 90, 160);
    text(cuento[17], 300, 90, 490, 150);
    pop();

    fill (0);
    textSize (30);
    text (" ¿Queres un final \n diferente? ", 300, 470);
  }
}

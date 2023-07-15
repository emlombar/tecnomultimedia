void mousePressed () {

  float dflecha = dist(mouseX, mouseY, 35, 35);
  float rflecha = 50/2;
  if (estado.equals("pantalla creditos2") && dflecha<rflecha) {
    estado = "pantalla menu2";
  } else   if (estado.equals("pantalla menu2") && mouseX >388 && mouseY>413 && mouseX <512 && mouseY <487) {
    estado = "pantalla creditos2";
  } else   if (estado.equals("pantalla menu1") && mouseX >388 && mouseY>413 && mouseX <512 && mouseY <487) {
    estado = "pantalla creditos1";
  } else   if (estado.equals("pantalla creditos1") && dflecha<rflecha) {
    estado = "pantalla menu1";
  }

  if (estado.equals("pantalla menu2") && mouseX >88 && mouseY>413 && mouseX <212 && mouseY <487) {
    estado = "pantalla 1";
  } else if (estado.equals("pantalla menu1") && mouseX >88 && mouseY>413 && mouseX <212 && mouseY <487) {
    estado = "pantalla 1";
  } else if (estado.equals("pantalla 1") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 2";
  } else if (estado.equals("pantalla 2") && mouseX >70 && mouseY>450 && mouseX <220 && mouseY <525) {
    estado = "pantalla 3";
  } else if (estado.equals("pantalla 3") && mouseX >185 && mouseY>420 && mouseX <415 && mouseY <530) {
    estado = "pantalla menu1";
  } else if (estado.equals("pantalla 2") && mouseX >370 && mouseY>450 && mouseX <520 && mouseY <525) {
    estado = "pantalla 4";
  } else if (estado.equals("pantalla 4") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 5";
  } else if (estado.equals("pantalla 5") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 6";
  } else if (estado.equals("pantalla 6") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 7";
  } else if (estado.equals("pantalla 7") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 8";
  } else if (estado.equals("pantalla 8") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 9";
  } else if (estado.equals("pantalla 9") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 10";
  } else if (estado.equals("pantalla 10") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 11";
  } else if (estado.equals("pantalla 11") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 12";
  } else if (estado.equals("pantalla 12") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 13";
  } else if (estado.equals("pantalla 13") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 14";
  } else if (estado.equals("pantalla 14") && mouseX >0 && mouseY>0 && mouseX <600 && mouseY <600) {
    estado = "pantalla 15";
  } else if (estado.equals("pantalla 15") && mouseX >370 && mouseY>450 && mouseX <520 && mouseY <525) {
    estado = "pantalla 16";
  } else if (estado.equals("pantalla 15") && mouseX >70 && mouseY>450 && mouseX <220 && mouseY <525) {
    estado = "pantalla 17";
  } else if (estado.equals("pantalla 16") && mouseX >185 && mouseY>420 && mouseX <415 && mouseY <530) {
    estado = "pantalla menu2";
  } else if (estado.equals("pantalla 17") && mouseX >185 && mouseY>420 && mouseX <415 && mouseY <530) {
    estado = "pantalla menu";
  }
}

void fondito (int y, int alto) {
  fill (255, 150);
  rect (300, y, 510, alto, 5);
  textFont (descripcion);
  fill (0);
  textSize (25);
  textLeading(20);
}

//Lombar Emma
// tp0 comisión 1

PImage paisaje;

void setup() {
  size(800, 400);
  paisaje= loadImage("paisaje.jpg");
}

void draw() {

  //cielo
  noStroke();
  fill(100, 181, 246);
  rect(700, 0, 100, 200);
  fill(225, 225, 225);
  rect(400, 0, 300, 300);
  ellipse(700, 10, 60, 110);
  ellipse(700, 100, 100, 100);

  // montañas fondo
  smooth();
  noStroke();
  fill(92, 97, 103);
  quad(595, 87, 620, 87, 630, 110, 585, 125);
  rect(400, 145, 195, 82); //base izq.
  triangle(585, 125, 650, 145, 536, 145);
  triangle(585, 125, 600, 140, 600, 115);
  rect(595, 97, 75, 225);
  triangle(670, 97, 800, 174, 670, 174);
  rect(670, 174, 130, 130);
  triangle(637, 97, 656, 97, 647, 90);

  //aguita a la sombra
  noStroke();
  fill(17, 120, 100);
  rect(400, 227, 400, 300);

  //aguita clara
  noStroke();
  fill(20, 143, 100);
  quad(510, 230, 800, 230, 800, 342, 799, 342);

  //isla fondo
  smooth();
  strokeWeight(10);
  strokeCap(ROUND);
  stroke(68, 90, 37);
  line(400, 227, 800, 227);

  //arboles fondo
  stroke(37, 62, 38);
  strokeWeight(1);
  fill(52, 75, 54);
  triangle(540, 195, 550, 230, 530, 230);
  triangle(560, 195, 570, 230, 550, 230);
  triangle(580, 195, 590, 230, 570, 230);
  triangle(600, 195, 610, 230, 590, 230);
  triangle(620, 195, 630, 230, 610, 230);
  triangle(640, 195, 650, 230, 630, 230);
  triangle(530, 195, 540, 230, 520, 230);
  triangle(550, 195, 560, 230, 540, 230);
  triangle(570, 195, 580, 230, 560, 230);
  triangle(590, 195, 600, 230, 580, 230);
  triangle(610, 195, 620, 230, 600, 230);
  triangle(630, 195, 640, 230, 620, 230);

  //isla izq.
  smooth();
  stroke(23, 39, 1);
  fill(23, 39, 1);
  strokeWeight(10);
  strokeCap(ROUND);
  bezier(400, 220, 575, 235, 575, 235, 400, 235);

  //isla der.
  smooth();
  stroke(44, 75, 2);
  fill(44, 75, 2);
  strokeWeight(10);
  strokeCap(ROUND);
  bezier(800, 220, 535, 232, 535, 235, 800, 235);

  //arboles izq.
  strokeWeight(1);
  stroke(31, 75, 34);
  fill(27, 94, 32);
  triangle(402, 50, 420, 230, 380, 230);
  triangle(440, 80, 470, 230, 420, 230);
  triangle(512, 140, 530, 230, 495, 230);
  triangle(420, 65, 400, 230, 440, 230);
  triangle(473, 90, 455, 230, 490, 230);
  triangle(492, 127, 475, 235, 510, 235);
  triangle(458, 80, 480, 234, 435, 234);

  //arboles der.
  strokeWeight(1);
  stroke(31, 75, 34);
  fill(27, 94, 32);
  triangle(675, 120, 690, 235, 660, 235);
  triangle(635, 145, 620, 235, 650, 235);
  triangle(647, 140, 660, 235, 635, 235);
  triangle(690, 100, 700, 237, 680, 237);
  triangle(620, 165, 600, 235, 640, 235);
  triangle(665, 135, 680, 235, 650, 235);
  triangle(710, 97, 730, 235, 690, 235);
  triangle(745, 80, 770, 233, 730, 233);
  triangle(793, 55, 820, 235, 775, 235);
  triangle(730, 65, 750, 237, 710, 237);
  triangle(770, 60, 790, 236, 760, 236);
  stroke(102, 137, 57);
  fill(114, 152, 64);
  ellipse(625, 235, 60, 10);
  ellipse(670, 235, 70, 20);
  ellipse(780, 235, 50, 20);
  ellipse(760, 235, 60, 30);

  //sol
  stroke(225, 213, 79);
  fill(255, 236, 179);
  strokeWeight(2);
  line(440, 75, 440, 120);
  line(440, 75, 440, 30);
  line(440, 75, 395, 75);
  line(440, 75, 485, 75);
  line(440, 75, 470, 105);
  line(440, 75, 410, 105);
  line(440, 75, 410, 45);
  line(440, 75, 470, 45);
  ellipse(440, 75, 30, 30);

  //piedras izq.
  noStroke();
  fill(72, 131, 76);
  ellipse(400, 245, 80, 70);
  strokeWeight(5);
  stroke(147, 131, 77);
  fill(147, 131, 77);
  bezier(400, 255, 495, 260, 475, 280, 400, 305);
  smooth();
  stroke(106, 107, 124);
  fill(106, 107, 124);
  strokeWeight(20);
  strokeCap(ROUND);
  bezier(400, 255, 465, 270, 465, 270, 400, 290);

  image(paisaje, 0, 0, 400, 400);
}

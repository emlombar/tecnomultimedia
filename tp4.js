// Emma Lombar
// Comision 1
//https://youtu.be/P9_0zrVCGis

let auto = [], fondo = [], boton = [], vx1 = [], vy1 = [], vx2 = [], vy2 = [], vx3 = [], vy3 = [], gato = [];
let estados, juego;
let vidas, puntos, salvado;

let michi;
let mx, my;

let cant;
let vancho, valto;

function preload() {
  for (let i=0; i<4; i++) {
    auto.push(loadImage('data/vehiculo'+i+'.png'));
  }
  for (let p=0; p<4; p++) {
    fondo.push(loadImage('data/fondo'+p+'.jpg'));
  }
  for (let q=0; q<5; q++) {
    boton.push(loadImage('data/boton'+q+'.png'));
  }
  for (let h=0; h<2; h++) {
    gato.push(loadImage('data/gato'+h+'.png'));
  }
}

function setup() {
  createCanvas (800, 550);
  estados= 'menu';
  juego= 'proceso';
  textSize(40);

  vidas= 3;
  puntos= 0;
  salvados= 0;

  mx= 400;
  my= 500;
  michi= michiUp;

  vancho= 100;
  valto= 50;

  for (let j=0; j<2; j++) {
    vx1[j] = random(-200, -50);
    vy1[j] = 125 + (j*200);
  }
  for (let j=0; j<2; j++) {
    vx2[j] = random(850, 1000);
    vy2[j] = 175 + (j*200);
  }
  for (let j=0; j<2; j++) {
    vx3[j] = random(-200, -50);
    vy3[j] = 225 + (j*200);
  }
}

function draw() {
  background (50, 3, 28);

  if (estados === 'menu') {
    image(fondo[0], 0, 0);
    image(boton[0], 100, 260);
    vidas= 3;
    puntos= 0;
    salvados= 0;
  } else if (estados === 'tutorial') {
    image(fondo[2], 0, 0);
    image(boton[1], 200, 439);
  } else if (estados === 'creditos') {
    image(fondo[1], 0, 0);
    image(boton[1], 200, 439);
  } else if (estados ==='juego') {
    if (juego === 'proceso') {
      image(fondo[3], 0, 0);
      verde ();
      michi (mx, my);
      vida();
      salva();
      fill(0);
      text (puntos, 220, 35);

      for (let i=0; i<2; i++) {
        image(auto[0], vx1[i], vy1[i], vancho, valto);
        vx1[i] += 5;
        if (vx1[i]>width) {
          vx1[i] = random(-200, -50);
        }
        if (choque(mx, my, vx1[i], vy1[i], vancho, valto)) {
          mx= 400;
          my= 500;
          michi= michiUp;
          puntos -=10;
          vidas --;
        }
      }
      for (let i=0; i<2; i++) {
        image(auto[1], vx2[i], vy2[i], vancho, valto);
        vx2[i] -= 5;
        if (vx2[i]<-100) {
          vx2[i] = random(850, 1000);
        }
        if (choque(mx, my, vx2[i], vy2[i], vancho, valto)) {
          mx= 400;
          my= 500;
          michi= michiUp;
          puntos -=10;
          vidas --;
        }
      }
      for (let i=0; i<2; i++) {
        image(auto[2], vx3[i], vy3[i], vancho, valto);
        vx3[i] += 5;
        if (vx3[i]>width) {
          vx3[i] = random(-200, -50);
        }
        if (choque(mx, my, vx3[i], vy3[i], vancho, valto)) {
          mx= 400;
          my= 500;
          michi= michiUp;
          puntos -=10;
          vidas --;
        }
      }
      for (let i=0; i<2; i++) {
        image(auto[3], 5, 75);
        image(auto[3], 630, 75);
        if (choque(mx, my, 5, 75, 175, 50)) {
          mx= 400;
          my= 500;
          michi= michiUp;
          puntos -=10;
          vidas --;
        }
        if (choque(mx, my, 630, 75, 175, 50)) {
          mx= 400;
          my= 500;
          michi= michiUp;
          puntos -=10;
          vidas --;
        }
      }
      if (my == 100) {
        salvados ++;
        mx= 400;
        my= 500;
        michi= michiUp;
      }
    }

    if (juego === 'perdiste') {
      image(boton[2], 185, 200);
      image (boton[4], 187, 399);
    } else if (juego === 'ganaste') {
      image(boton[3], 185, 200);
      image (boton[4], 187, 399);
    }
  }
}

function choque (x, y, px, py, ancho, alto) {
  if (x+10 > px && x-10 < px+ancho && y+20 > py && y-20 < py+alto) {
    return true;
  } else {
    return false;
  }
}

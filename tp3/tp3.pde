// https://www.youtube.com/watch?v=jVDFgIY3ZKI
// Titulo de la obra: "Distorsión controlada". 
// Valentina Gómez Cipollone
// Comision 2
PImage IlucionOptica;
int parada, sumar;

void setup () {
  IlucionOptica= loadImage ( "IlucionOptica.png" );
  size( 800, 400);
  background ( 200 );
  parada=0;
  sumar=255;
}

void draw () {
  color col1, col2, col3, col4;
  col1=0;
  col2=255;
  col3=0;

  background( 255 );
  image( IlucionOptica, 0, 0 );
  stroke(0);
  strokeWeight(1);
  line(400, 0, 800, 0);

  cuadroExterior(col1, col2);

  cuadroInterior(col1, col2);

  if ( mousePressed && (mouseButton == LEFT)) {
    col3=sacarcolor1();
    cuadroExterior(col3, col2);
    col4=sacarcolor2();
    cuadroInterior(col4, col2);
    noLoop();
  } else if (mousePressed && (mouseButton == RIGHT)) {
  }
}


void cuadroExterior(color col3, color col4) {
  color cambio;
  cambio=col3;
  for (int i=400; i<800; i +=40) {
    for (int h=0; h<400; h += 10) {

      if (cambio==col4) {
        cambio=col3;
        fill(cambio);
      } else {
        cambio=col4;
        if (cambio==255) {
          fill(cambio);
        } else
        {
          fill(cambio);
        }
      }
      rect(i, h, 40, 10);
    }
    if (cambio==col3) {
      cambio=col4;
    } else {
      cambio=col3;
    }
  }
}

void cuadroInterior(color col5, color col6) {
  color cambio;
  cambio=col6;
  noStroke();
  for (int i=480; i<720; i +=10) {
    for (int h=90; h<330; h += 42) {

      if (cambio==col6) {
        cambio=col5;
        fill(cambio);
      } else {
        cambio=col6;
        if (cambio==255) {
          fill(cambio);
        } else
        {
          fill(cambio);
        }
      }

      rect(i, h, 10, 40);
    }
    if (cambio==col5) {
      cambio=col6;
    } else {
      cambio=col5;
    }
  }
}

void mousePressed() {

  if (mousePressed == true) {
    loop();
  }
}

color sacarcolor1 () {
  color resultado= color(0, 0, random(255));
  return resultado;
}

color sacarcolor2 () {
  color from = color(random(255), 102, 204);
  color to = color(204, 102, random(255));
  color interA = lerpColor(from, to, .33);
  color resultado= interA;
  return resultado;
}

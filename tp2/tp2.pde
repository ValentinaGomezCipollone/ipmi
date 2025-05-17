int e;
PImage imagenUno, imagenDos, imagenTres, imagenCuatro;
PFont font;
String textoUno, textoDos, textoTres, textoCuatro;

int contadorTiempo;

float unoX;
float velX;
float dosX;



void setup() {
  size(640, 480);
  background(255);
  e = 1;


  imagenUno = loadImage ( "metegolPrimero.jpg" ) ;
  imagenDos = loadImage ( "metegol.creador.png" ) ;
  imagenTres = loadImage ( "metegol.jpg" ) ;
  imagenCuatro = loadImage ( "metegol.pelicula.jpg" ) ;


  textoUno = "El METEGOL: el futbol de mesa, como también se lo conoce fue creado en 1937 por Alejandro Finisterre un poeta y anarquista español.En noviembre de 1936 Finisterre cae gravemente herido por una bomba. En un primer momento lo trasladaron a Valencia, pero para su mejor atención, fue llevado a un hospital en Cataluña, donde estuvo convaleciente muchos meses. Aunque lograron salvarle la vida quedó cojo para siempre. Lo que impidió que pudiese volver a practicar fútbol, su deporte favorito.Fue allí donde conoció a muchos niños, heridos como él, condenados a esa incapacidad. Entonces desarrolló la idea del metegol inspirándose en el tenis. Así como hay un tenis de mesa, de la misma manera podría haber un fútbol de mesa. Y así nació nuestro metegol, llamado futbolín en España." ;
  textoDos = "Le confió a un amigo, Francisco Javier Altuna, un carpintero vasco, la fabricación del primer metegol, según sus instrucciones. Aun así, no pudo conseguir que su invento fuese fabricado y distribuido a nivel industrial porque en ese momento todas las fábricas de juguetes se dedicaban a producir armas para la guerra. Poco tiempo después patentó su invento en Barcelona.Ante el triunfo del franquismo Finisterre logra huir a Francia. Cruza la frontera a pie y una lluvia torrencial arruina los papeles de la patente de su invento. Sin embargo unos años después logra que una empresa de Paris, que lo estaba fabricando, le reconociera en parte sus derechos. Con el dinero recaudado, Finisterre se traslada a Ecuador primero, y luego a Guatemala. En Guatemala mejora su metegol y logra empezar a fabricarlo realizando un buen negocio." ;
  textoTres = "El metegol es un juego que combina habilidad manual, estrategia y reflejos rápidos. Su atractivo radica en su sencillez y en la emoción de competir, lo que lo ha se convertido en un clásico atemporal disfrutado por personas de todas las edades alrededor del mundo. Se juega en una mesa especial con figuras de jugadores de un pie los cuales pueden ser de aluminio o plástico, están sobre barras que giran, y  los participantes manipulan esas barras para mover la pelota y anotar goles en el arco contrario. Hoy en día, el metegol sigue siendo un juego muy querido en Argentina, jugado en hogares, bares, clubes y escuelas. Incluso existe la Asociación Argentina de Jugadores de Metegol (AAJM), que organiza torneos y promueve el juego a nivel competitivo." ;
  textoCuatro = "Hablando de la popularidad del metegol, es fascinante saber que incluso inspiró una película animada. Se trata de Metegol (conocida internacionalmente como Foosball), una producción argentino-española de 2013 dirigida por Juan José Campanella. La película cuenta la historia de Amadeo, un joven tímido pero habilidoso jugador de metegol que vive en un pequeño pueblo. Su vida tranquila se ve alterada cuando un antiguo rival, ahora convertido en una estrella del fútbol, regresa para vengarse y demoler el querido club de fútbol donde Amadeo jugaba al metegol. Para salvar su pueblo y recuperar a su amada, Amadeo contará con la inesperada ayuda de los jugadores de su metegol, quienes ¡cobran vida! Juntos, vivirán una emocionante aventura llena de humor y corazón, demostrando que incluso los héroes más pequeños pueden lograr grandes cosas. La película captura la pasión y la emoción que rodean al metegol, llevándolo a una escala épica y fantástica.";


  unoX = 0;
  dosX = 0;
  contadorTiempo = 0;
  velX = 0.2;
}

void draw() {
  background(255);

  font = loadFont ("TimesNewRomanPS-ItalicMT-48.vlw");
  textFont ( font );

  if ( e == 1) {
    image(imagenUno, 0, 0, 640, 300);
    fill( 0, 100, 100 );
    textSize(15);
    if (unoX >= height) {
    }
    unoX = unoX + velX;
    text(textoUno, 20, 310, 600, unoX);
  }



  if ( frameCount == (60*17)) {
    e = 2;
    unoX = 0;
  } else if ( e == 2) {
    image(imagenDos, 0, 0, 640, 300);
    fill( 200, 100, 0 );
    textSize(14);
    if ( unoX <= 170) {
      unoX = unoX + velX;

      text(textoDos, 20, 480-unoX, 600, 150);
    } else {
      text(textoDos, 20, 310, 600, 150);
    }
  }

  if ( frameCount == (60*34)) {
    e = 3;
  } else if ( e == 3) {
    image ( imagenTres, 0, 0, 640, 300 ) ;

    float opaciodad = map(contadorTiempo, 0, 150, 0, 255);
    fill(0, opaciodad);
    textSize( 15);
    text(textoTres, 20, 300, 600, 150);
    contadorTiempo++;
  }

  if ( frameCount == (60*42)) {
    e = 4;
    unoX = 1;
  } else if ( e == 4) {
    image ( imagenCuatro, 0, 0, 640, 300 ) ;
    float dx = 255 - unoX;
    tint(255, dx);
    fill ( 50, 149, 22 ) ;
    textSize(13);

    text(textoCuatro, 20, 320, 600, 150);
    unoX++;
  }

  if ( frameCount > (60*46) && e == 4) {
    stroke( 22, 135, 18 );
    fill(35, 217, 30 );
    rect( 550, 15, 65, 30);
    fill(0);

    text("Reiniciar", 555, 34);
  }
}

void mousePressed() {
  if ( mouseX > 550 && mouseX < 600 && mouseY > 20 && mouseY < 30) {
    if ( e == 4) {

      e = 1;
      unoX = 0;
      tint(255, 255);
      frameCount = (0);
      contadorTiempo = 0;
    }
  }
}


PImage miObjetoFavorito;
PFont font;
void setup(){
  miObjetoFavorito = loadImage ( "pelota-handball.jpg" );
  size( 800, 400);
 background( 200 );
}

void draw(){
  background( 200 );
  image( miObjetoFavorito, 0, 0 );
 fill(48, 64, 132);
 strokeWeight ( 1 );
 circle( 201+400, 201, 300);

font = loadFont("GillSans-UltraBoldCondensed-48.vlw");
textFont(font);


fill(216, 247, 24);
textSize(36);
text("DRIBBLING", 513, 189);

fill(216, 247, 24);
textSize(14);
text("HANDBALL", 570, 88);

noStroke();
triangle(145+400, 122, 103+400, 158, 100+400, 152);
rect(500, 154, 7, 50);
triangle(100+400, 204, 108+400, 204, 118+400, 214);

triangle(292+400, 145, 306+400, 160, 302+400, 161);
rect(702, 160, 5, 45);
triangle(303+400, 201, 307+400, 206, 263+400, 231);


quad(172+400, 256, 223+400, 256, 219+400, 273, 177+400, 273);
translate(0, 0, -272);
fill(48, 64, 132);
textSize(14);
text("WING", 583, 272);


stroke(2);
line(143+400, 102, 199+400, 132);
line(199+400, 132, 200+400, 214);
line(200+400, 214, 135+400, 253);
line(135+400, 253, 83+400, 215);
line(83+400, 215, 85+400, 143);
line(85+400, 143, 143+400, 101);

line(199+400, 132, 263+400, 106);
line(263+400, 106, 316+400, 143);
line(316+400,143, 318+400, 222);
line(318+400, 222, 262+400, 251);
line(262+400, 251, 201+400, 215);

line(263+400, 106, 241+400, 66);
line(242+400, 66, 248+400, 59);
line(317+400, 143, 339+400, 143);

line(144+400, 100, 168+400, 64);
line(168+400, 64, 241+400, 67);

line(168+400, 64, 161+400, 57);

line(85+400, 143, 66+400, 136);

line(82+400, 214, 58+400, 242);
line(136+400, 254, 157+400, 312);
line(157+400, 312, 131+400, 335);

line(157+400, 312, 234+400, 315);
line(234+400, 315, 262+400, 252);

line(234+400, 315, 258+400, 339);

line(319+400, 222, 345+400, 241);

 strokeWeight( 5 );
  line(400, 0, 400, 400);

 println( mouseX + " / " + mouseY);
}

void mouseMoved(){ 
  strokeWeight( 2 );
  line( mouseX, 0, mouseX, 400);
  line( 0, mouseY, 800, mouseY );  
}

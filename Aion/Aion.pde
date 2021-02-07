//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 2200520-Santiago Enrique Monsalve Durán.
//Descripción:
import processing.sound.*;
PImage Fondo1;
PImage acarta;
PImage ccarta;
PImage stcarta;
PFont letra;
boolean press;
int vidae=100,vidap=50;
int xc1=200,xc2=400,xc3=600,ycs=450,xbe=750,xbp=100,ybe=50,ybp=400;
int dano1=10,cura1=10;
int larcar=250,anccar=175;
int mana=0;
int fondox=0;
int fondoy=0;

SoundFile song1;

Carta atk,heal,tiamat;
Barra venemigo,vprota;
Enemigo ero;
void setup()
{
  size(1000,700);
  
  textAlign(CENTER);
  acarta=loadImage("ESPADA DEL TIEMPO.jpg");
  ccarta=loadImage("RELOJ.jpg");
  stcarta=loadImage("SOUL TIAMAT.jpg");
  Fondo1=loadImage("FONDO.jpg");
  letra= createFont("Norse.otf",15);
  acarta.resize(anccar,larcar);
  ccarta.resize(anccar,larcar);
  stcarta.resize(anccar,larcar);
  Fondo1.resize(1000,700);
  atk=new Carta(xc1,ycs,xc1+anccar,ycs+larcar);
  heal=new Carta(xc2,ycs,xc2+anccar,ycs+larcar);
  tiamat=new Carta(xc3,ycs,xc3+anccar,ycs+larcar);
  venemigo=new Barra(xbe,ybe,20);
  vprota=new Barra(xbp,ybp,20);
  ero=new Enemigo(dano1,cura1);
  song1=new SoundFile(this,"Argonne - Zachariah Hickman.mp3");
  song1.play();
}
void draw()
{
  background(100);
  textFont(letra);
  image(acarta,xc1,ycs);
  image(ccarta,xc2,ycs);
  image(stcarta,xc3,ycs);
  image(Fondo1,fondox,fondoy);
  if(mousePressed){
  if(mouseX<700 && mouseX>300 && mouseY>270 && mouseY<370){
    fondox= 5000;
  }}
  //ero.turnoe();
  atk.mousePressed(); 
  atk.accion();
  heal.mousePressed();
  heal.curar();
  tiamat.mousePressed();
  tiamat.soult();
  vprota.displayp();
  venemigo.displaye();
  textSize(22);
  fill(0);
  text(vidae,850,ybe+18);
  text(vidap,200,ybp+18);
  
}

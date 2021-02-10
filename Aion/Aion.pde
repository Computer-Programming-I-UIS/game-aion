//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 2200520-Santiago Enrique Monsalve Durán.
//Descripción:
import processing.sound.*;
PImage Fondo1;
PImage Fondo2;
PImage acarta;
PImage ccarta;
PImage espcarta;
PImage stcarta;
PImage Heroe1;
PImage Heroe2;
PImage Heroe3;
PImage Heroe4;
PImage BossSerp1;
PImage BossSerp2;
PImage BossSerp3;
PImage BossSerp4;
PImage BossSerp5;
PImage BossSerp6;
PImage BossSerp7;
PImage BossSerp8;
PFont letra;
boolean press,jugar;
int vidae=100,vidap=50;
int xc1=200,xc2=400,xc3=600,xc4=700,ycs=450,xbe=750,xbp=100,ybe=50,ybp=400;
int dano1=10,cura1=10;
float cdatk1=10,cdheal1=20;
float cdap=0,cdhp=10,cdesp=0;
int larcar=250,anccar=175;
int espiritu=50;
int xesp=100,yesp=350;
int fondox=0;
int fondoy=0;
int fondo2x=5000;
int ser6x=5000;
int ser7x=800;
int ser8x=5000;

//SoundFile song1;

Carta atk,heal,spirit,tiamat;
Barra venemigo,vprota,besp;
Enemigo ero;
void setup()
{
  size(1000,700);
  
  textAlign(CENTER);
  acarta=loadImage("ESPADA DEL TIEMPO.jpg");
  ccarta=loadImage("RELOJ.jpg");
  espcarta=loadImage("MEDITACIÓN.jpg");
  stcarta=loadImage("SOUL TIAMAT.jpg");
  Fondo1=loadImage("FONDO.jpg");
  Fondo2=loadImage("SELVA.jpg");
  Heroe1=loadImage("HEROE1.png");
  Heroe2=loadImage("HEROE2.png");
  Heroe3=loadImage("HEROE3.png");
  Heroe4=loadImage("HEROE4.png");
  BossSerp1=loadImage("SERPIENTEATK1.png");
  BossSerp2=loadImage("SERPIENTEATK2.png");
  BossSerp3=loadImage("SERPIENTEATK3.png");
  BossSerp4=loadImage("SERPIENTEATK4.png");
  BossSerp5=loadImage("SERPIENTEATK5.png");
  BossSerp6=loadImage("SERPIENTEDAÑO.png");
  BossSerp7=loadImage("SERPIENTEFF.png");
  BossSerp8=loadImage("SERPIENTEMUERTA.png");
  letra= createFont("Norse.otf",15);
  BossSerp1.resize(100,100);
  BossSerp2.resize(100,100);
  BossSerp3.resize(100,100);
  BossSerp4.resize(100,100);
  BossSerp5.resize(100,100);
  BossSerp6.resize(100,100);
  BossSerp7.resize(100,100);
  BossSerp8.resize(100,100);
  acarta.resize(anccar,larcar);
  ccarta.resize(anccar,larcar);
  espcarta.resize(anccar,larcar);
  stcarta.resize(anccar,larcar);
  Fondo1.resize(1000,700);
  Fondo2.resize(1000,700);
  atk=new Carta(xc1,ycs,xc1+anccar,ycs+larcar);
  heal=new Carta(xc2,ycs,xc2+anccar,ycs+larcar);
  spirit=new Carta(xc3,ycs,xc3+anccar,ycs+larcar);
  tiamat=new Carta(xc4,ycs,xc4+anccar,ycs+larcar);
  venemigo=new Barra(xbe,ybe,20);
  vprota=new Barra(xbp,ybp,20);
  besp=new Barra(xesp,yesp,20);
  ero=new Enemigo(dano1,cura1,cdatk1,cdheal1);
  //song1=new SoundFile(this,"Argonne - Zachariah Hickman.mp3");
  //song1.play();
}
void draw()
{
  background(100);
  textFont(letra);
   image(Fondo2,fondo2x,0);
  image(Fondo1,fondox,fondoy);
 
  if(mousePressed){
  if(mouseX<700 && mouseX>300 && mouseY>270 && mouseY<370){
    fondox= 5000;
    fondo2x=0;
    jugar=true;
  }}
  if(jugar==true)
  {
  image(BossSerp8,ser8x,100); 
  image(BossSerp7,ser7x,100);
  image(BossSerp6,ser6x,100);
  image(acarta,xc1,ycs);
  image(ccarta,xc2,ycs);
  image(espcarta,xc3,ycs);
  //image(stcarta,xc4,ycs);
  ero.turnoe();
  ero.ataque();
  ero.display();
  ero.cura();
  atk.mousePressed(); 
  atk.accion();
  heal.mousePressed();
  heal.curar();
  spirit.mousePressed();
  spirit.recharge();
  //tiamat.mousePressed();
  //tiamat.soult();
  besp.displayesp();
  vprota.displayp();
  venemigo.displaye();
  if(vidap>=100)
  {
    vidap=100;
  }
  if(vidap<=0)
  {
    vidap=0;
  }
  if(vidae>=100)
  {
    vidae=100;
  }
  if(vidae<=0)
  {
    vidae=0;
  }
  
  if(espiritu>=100)
  {
    espiritu=100;
  }
  if(espiritu<=0)
  {
    espiritu=0;
  }
  textSize(22);
  fill(0);
  text(vidae,850,ybe+18);
  text(vidap,200,ybp+18);
  text(espiritu,xesp+100,yesp+18);
  textSize(20);
  text(cdap,xc1+120,ycs+240);
  text(cdhp,xc2+120,ycs+240);
  text(cdesp,xc3+120,ycs+240);
  }
}

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
PImage serpnorm,serpatk,serpdano,serprip;

PFont letra;
boolean press,jugar;
int xboton=298,xfboton=702,yplay=270,yfplay=370;
int ysalir=483,yfsalir=582;
int vidae=100,vidap=50;
int xc1=200,xc2=400,xc3=600,xc4=700,ycs=450,xbe=750,xbp=100,ybe=50,ybp=400;
int dano1=10,cura1=10;
float cdatk1=10,cdheal1=25;
float cdap=0,cdhp=10,cdesp=0;
int larcar=250,anccar=175;
int espiritu=50;
int xesp=100,yesp=350;
int ssprite=0;
int fondox=0;
int fondoy=0;
int fondo2x=5000;
int ser6x=5000;
int ser7x=800;
int ser8x=5000;

//SoundFile song1;

Boton play,salir;
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
  serpatk=loadImage("SERPIENTEATK3.png");
  serpdano=loadImage("SERPIENTEDAÑO.png");
  serpnorm=loadImage("SERPIENTEFF.png");
  serprip=loadImage("SERPIENTEMUERTA.png");
  letra= createFont("Norse.otf",15);
  serpatk.resize(100,100);
  serpdano.resize(100,100);
  serpnorm.resize(100,100);
  serprip.resize(100,100);
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
  play=new Boton(xboton,yplay,xfboton,yfplay);
  salir=new Boton(xboton,ysalir,xfboton,yfsalir);
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
  play.mousePressed1();
  salir.mousePressed2();

  if(jugar==true)
  {
  ero.sprites();
  
  
  
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
    ssprite=4;
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
  text(cdap,xc1+130,ycs+240);
  text(cdhp,xc2+130,ycs+240);
  text(cdesp,xc3+130,ycs+240);
  if(vidap==0 || vidae==0)
  {
    jugar=false;
    fondox= 0;
    fondo2x=5000;
  }
  }
}

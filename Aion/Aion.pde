//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 2200520-Santiago Enrique Monsalve Durán.
//Descripción:
import processing.sound.*;
PImage fbase,fjuego,fmuerte;
PImage acarta;
PImage ccarta;
PImage espcarta;
PImage stcarta;
PImage heroe1,heroedano,heroemana,heroeheal;
PImage serpnorm,serpatk,serpdano,serprip;
PImage his1,his2,his3,his4,his5,his6;
PImage tutorial;
PFont letra,letra2;
boolean press;
int psprite=0,protax1=150,pdanox=5000,pmanax=5000,phealx=5000,protay=160;
int jugar,victorias;
int xboton=300,xfboton=708,yplay=182,yfplay=281;
int ybtut=305,yfbtut=404;//Coordenadas en y del boton del tutorial
int ysalir=571,yfsalir=670;
int xsmuerte=784,xsfmuerte=880,ysmuerte=570,ysfmuerte=613;
int volverx=677,volverxf=986,volvery=485,volveryf=529;
int vidae=100,vidap=100;
int xc1=200,xc2=400,xc3=600,xc4=700,ycs=450;
int xbe=520,xbp=70,ybe=15,ybp=15;
int altobar=35;
int dano1=10,cura1=10;
float cdatk1=10,cdheal1=25;
float cdap=0,cdhp=10,cdesp=0;
int larcar=250,anccar=175;
int espiritu=50;
int xesp=70,yesp=390;
int ssprite=0;
int fondox=0,fondoy=0;
int fondo2x=5000;
int fmuertex=5000;
int serpy=160;
int serpnormx=700,serpdanox=5000,serpatkx=5000,serpripx=5000;
int tampjx=160,tampjy=180;
int his1x=5000,his2x=5000,his3x=5000,his4x=5000,his5x=5000,his6x=5000;
int hist=0;
int tutox=5000;

//SoundFile song1;
Heroe prota;
Boton play,salir,smuerte,volver,botuto;
Carta atk,heal,spirit,tiamat;
Barra venemigo,vprota,besp;
Enemigo ero;
Storie intro;
void setup()
{
  size(1000,700);
  
  textAlign(CENTER);
  acarta=loadImage("ESPADA DEL TIEMPO.jpg");
  ccarta=loadImage("RELOJ.jpg");
  espcarta=loadImage("MEDITACIÓN.jpg");
  stcarta=loadImage("SOUL TIAMAT.jpg");
  fbase=loadImage("FONDO.jpg");
  fjuego=loadImage("SELVA.jpg");
  fmuerte=loadImage("MUERTE.jpg");
  heroe1=loadImage("HEROE1.png");
  heroedano=loadImage("HEROE2.png");
  heroemana=loadImage("HEROE3.png");
  heroeheal=loadImage("HEROE4.png");
  serpatk=loadImage("SERPIENTEATK3.png");
  serpdano=loadImage("SERPIENTEDAÑO.png");
  serpnorm=loadImage("SERPIENTEFF.png");
  serprip=loadImage("SERPIENTEMUERTA.png");
  his1=loadImage("HISTORIA1.png");
  his2=loadImage("HISTORIA2.png");
  his3=loadImage("HISTORIA3.png");
  his4=loadImage("HISTORIA4.png");
  his5=loadImage("HISTORIA5.png");
  his6=loadImage("HISTORIA6.png");
  tutorial=loadImage("FLECHAS.png");
  letra= createFont("Norse.otf",20);
  letra2=createFont("Norsebold.otf",20);
  tutorial.resize(1000,700);
  heroe1.resize(tampjx,tampjy);
  heroedano.resize(tampjx,tampjy);
  heroeheal.resize(tampjx,tampjy);
  heroemana.resize(tampjx,tampjy);
  serpatk.resize(tampjx,tampjy);
  serpdano.resize(tampjx,tampjy);
  serpnorm.resize(tampjx,tampjy);
  serprip.resize(tampjx,tampjy);
  acarta.resize(anccar,larcar);
  ccarta.resize(anccar,larcar);
  espcarta.resize(anccar,larcar);
  stcarta.resize(anccar,larcar);
  fbase.resize(1000,700);
  fjuego.resize(1000,700);
  fmuerte.resize(1000,700);
  his1.resize(1000,700);
  his2.resize(1000,700);
  his3.resize(1000,700);
  his4.resize(1000,700);
  his5.resize(1000,700);
  his6.resize(1000,700);
  prota=new Heroe( );
  atk=new Carta(xc1,ycs,xc1+anccar,ycs+larcar);
  heal=new Carta(xc2,ycs,xc2+anccar,ycs+larcar);
  spirit=new Carta(xc3,ycs,xc3+anccar,ycs+larcar);
  tiamat=new Carta(xc4,ycs,xc4+anccar,ycs+larcar);
  venemigo=new Barra(xbe,ybe,altobar);
  vprota=new Barra(xbp,ybp,altobar);
  besp=new Barra(xesp,yesp,altobar);
  play=new Boton(xboton,yplay,xfboton,yfplay);
  botuto=new Boton(xboton,ybtut,xfboton,yfbtut);
  salir=new Boton(xboton,ysalir,xfboton,yfsalir);
  smuerte=new Boton(xsmuerte,ysmuerte,xsfmuerte,ysfmuerte);
  volver=new Boton(volverx,volvery,volverxf,volveryf);
  ero=new Enemigo(dano1,cura1,cdatk1,cdheal1);
  intro=new Storie();
  
  //song1=new SoundFile(this,"Argonne - Zachariah Hickman.mp3");
  //song1.play();
  
}
void draw()
{
  background(100);
  textFont(letra);
  image(fjuego,fondo2x,0);
  image(fmuerte,fmuertex,0);
  image(fbase,fondox,fondoy);
  image(his1,his1x,0);
  image(his2,his2x,0);
  image(his3,his3x,0);
  image(his4,his4x,0);
  image(his5,his5x,0);
  image(his6,his6x,0);
  image(tutorial,tutox,0);
  if(jugar==0)
  {
  his1x=5000;
  fondox=0;
  fondo2x=5000;
  fmuertex=5000;
  tutox=5000;
  play.mousePressed1();
  botuto.mousePressedt();
  salir.mousePressed2();
  intro.contar();
  }
  if(jugar==1)
  {
  //song1.stop();
  tutox=5000;
  fondox=5000;
  fondo2x=0;
  prota.sprites();
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
  textSize(30);
  fill(#FFFFFF);
  stroke(0);
  text(vidae,xbe+200,ybe+30);
  text(vidap,xbp+200,ybp+30);
  text(espiritu,xesp+200,yesp+30);
  textSize(20);
  fill(#BC0410);
  text(cdap,xc1+130,ycs+240);
  fill(#05AD06);
  text(cdhp,xc2+130,ycs+240);
  fill(#050CAD);
  text(cdesp,xc3+130,ycs+240);
  if(vidap==0)
  {
    jugar=2;
  }
  if(vidae==0)
  {
    hist=0;
    jugar=0;
    fmuertex=5000;
    fondox= 0;
    fondo2x=5000;
    tutox=5000;
  }
  }
  if(jugar==2)
  {
    tutox=5000;
    fmuertex=0;
    smuerte.mousePressedm();
    volver.volvere();
    fondox= 5000;
    fondo2x=5000;
    hist=0;
  }
}

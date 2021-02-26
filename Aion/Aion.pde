//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 2200520-Santiago Enrique Monsalve Durán.
//Descripción:
import processing.sound.*;
PImage fbase,fbosque,fmuerte,fdesierto,fcielo,flava;//Fondos del juego
PImage acarta;
PImage ccarta;
PImage espcarta;
PImage serpcarta,grifocarta;//imagenes de cartas
PImage stcarta;
PImage heroe1,heroedano,heroemana,heroeheal;//sprites del heroe
PImage serpnorm,serpatk,serpdano;//Sprites de la serpiente
PImage mantn,mantatk,mantdano;//sprites del grifo
PImage spyron,spyroatk,spyrodano;//sprites del dragon
PImage dogen,dogeatk,dogedano;//sprites del cerbero
PImage his1,his2,his3,his4,his5,his6,his7,his8,his9;//sprites de la historia
PImage his10,his11,his12,his13,his14,his15,his16,his17,his18;//sprites de la historia
PImage tutorial,creditos1,creditos2;
PFont letra,letra2;
boolean press;
int psprite=0,protax1=150,pdanox=5000,pmanax=5000,phealx=5000,protay=160;
int jugar,victory=0,lvl=0;//variables de jugar, vces q ha ganado y nivel
int xboton=300,xfboton=708,yplay=182,yfplay=281;
int ybtut=305,yfbtut=404;//Coordenadas en y del boton del tutorial
int ycredits=433,yfcredits=533;//Coordenadas en y del boton de los creditos
int ysalir=571,yfsalir=670;
int xsmuerte=784,xsfmuerte=880,ysmuerte=570,ysfmuerte=613;//coordenadas boton de salir al perder
int volverx=677,volverxf=986,volvery=485,volveryf=529;
int vidae=100,vidap=100;
int xc1=115,xc2=315,xc3=515,xcserp=5000,xcgrifo=5000,xcdrake=5000,xcspe=715,ycs=450;//coordenadas de las cartas
int larcar=250,anccar=175;//tamaño de las cartas
int xbe=520,xbp=70,ybe=15,ybp=15;
int altobar=35;
int dano1=10,cura1=10,dano2=40,absorb=7,dano3=1,buff=5,dano4=15,caos=3;//Daño y cura enemigos
float cdatk1=10,cdheal1=25,cdatk2=25,cdabs=5,cdatk3=1,cdbuff=5,cdatk4=15,cdcaos=4;//cd de los enemigos
int protatk=10;//ataque del heroe
float cdap=0,cdhp=0,cdesp=0,cdspe=20;//cd cartas

int espiritu=50;//espiritu inicial
int xesp=70,yesp=390;//coordenadas de la barra del espiritu
int ssprite=0;
int fondox=0,fondoy=0;
int fondo2x=5000,fdesx=5000,fskyx=5000,flavax=5000;//Coordenadass en x de los fondos
int cred1x=5000,cred2x=5000;//Coordenadas en x de los creditos
int fmuertex=5000;
int serpy=160;
int snormx=700,sdanox=5000,satkx=5000,sripx=5000;
int tampjx=160,tampjy=180;
int his1x=5000,his2x=5000,his3x=5000,his4x=5000,his5x=5000,his6x=5000;
int his7x=5000,his8x=5000,his9x=5000,his10x=5000,his11x=5000,his12x=5000,his13x=5000;
int his14x=5000,his15x=5000,his16x=5000,his17x=5000,his18x=5000;
int hist=0;
int credsk=0;//Variable para pasar los creditos
int tutox=5000;
int special;//variable de la carta especial q toca
//SoundFile song1;
Heroe prota;
Boton play,salir,smuerte,volver,botuto,credits;
Carta atk,heal,spirit,tiamat;
Barra venemigo,vprota,besp;
Enemigo ero,undo,spyro,doge;
Storie intro,post1,post2,post3,fin;
void setup()
{
  size(1000,700);
  
  textAlign(CENTER);
  acarta=loadImage("ESPADA DEL TIEMPO.jpg");//Cargar imagenes de las cartas
  ccarta=loadImage("RELOJ.jpg");
  espcarta=loadImage("MEDITACIÓN.jpg");
  serpcarta=loadImage("KOSMOS.jpg");
  grifocarta=loadImage("HYPERION.jpg");
  stcarta=loadImage("SOUL TIAMAT.jpg");//Cargar imagenes de las cartas
  fbase=loadImage("FONDO.jpg");
  fbosque=loadImage("SELVA.jpg");
  fdesierto=loadImage("DESIERTO.jpg");
  fcielo=loadImage("FONDO3.jpg");
  flava=loadImage("FONDO4.jpg");
  fmuerte=loadImage("MUERTE.jpg");
  heroe1=loadImage("HEROE1.png");
  heroedano=loadImage("HEROE2.png");
  heroemana=loadImage("HEROE3.png");
  heroeheal=loadImage("HEROE4.png");
  serpatk=loadImage("SERPIENTEATK3.png");//Cargar sprites del primer enemigo
  serpdano=loadImage("SERPIENTEDAÑO.png");
  serpnorm=loadImage("SERPIENTEFF.png");//Cargar sprites del primer enemigo
  mantn=loadImage("GRIFO1.png");//Cargar sprites del segundo enemigo
  mantatk=loadImage("GRIFO2.png");
  mantdano=loadImage("GRIFO3.png");//Cargar sprites del segundo enemigo
  spyron=loadImage("DRAGON2.png");//Cargar imagenes del tercer enemigo
  spyroatk=loadImage("DRAGON3.png");
  spyrodano=loadImage("DRAGON1.png");//Cargar imagenes del tercer enemigo
  dogen=loadImage("CERBERO1.png");
  dogeatk=loadImage("CERBERO3.png");
  dogedano=loadImage("CERBERO2.png");
  his1=loadImage("HISTORIA1.png");
  his2=loadImage("HISTORIA2.png");
  his3=loadImage("HISTORIA3.png");
  his4=loadImage("HISTORIA4.png");
  his5=loadImage("HISTORIA5.png");
  his6=loadImage("HISTORIA6.png");
  his7=loadImage("HISTORIA7.png");
  his8=loadImage("HISTORIA8.png");
  his9=loadImage("HISTORIA9.png");
  his10=loadImage("HISTORIA10.png");
  his11=loadImage("HISTORIA11.png");
  his12=loadImage("HISTORIA12.png");
  his13=loadImage("HISTORIA13.png");
  his14=loadImage("HISTORIA14.png");
  his15=loadImage("HISTORIA15.png");
  his16=loadImage("HISTORIA16.png");
  his17=loadImage("HISTORIA17.png");
  his18=loadImage("HISTORIA18.png");
  tutorial=loadImage("FLECHAS.png");
  creditos1=loadImage("CREDITOS1.jpg");
  creditos2=loadImage("CREDITOS2.jpg");
  letra= createFont("Norse.otf",20);
  letra2=createFont("Norsebold.otf",20);
  tutorial.resize(1000,700);
  creditos1.resize(1000,700);
  creditos2.resize(1000,700);
  heroe1.resize(tampjx,tampjy);
  heroedano.resize(tampjx,tampjy);
  heroeheal.resize(tampjx,tampjy);
  heroemana.resize(tampjx,tampjy);
  serpatk.resize(tampjx,tampjy);
  serpdano.resize(tampjx,tampjy);
  serpnorm.resize(tampjx,tampjy);
  mantn.resize(tampjx+10,tampjy+10);//Ajuste al tamaño del segundo boss
  mantatk.resize(tampjx+10,tampjy+10);
  mantdano.resize(tampjx+10,tampjy+10);//Ajuste al tamaño del segundo boss
  spyron.resize(tampjx+60,tampjy+60);//Ajuste al tamaño del tercer boss
  spyroatk.resize(tampjx+60,tampjy+60);
  spyrodano.resize(tampjx+60,tampjy+60);//Ajuste al tamaño del tercer boss
  dogen.resize(tampjx+30,tampjy);
  dogeatk.resize(tampjx+50,tampjy);
  dogedano.resize(tampjx+50,tampjy);
  acarta.resize(anccar,larcar);
  ccarta.resize(anccar,larcar);
  espcarta.resize(anccar,larcar);
  serpcarta.resize(anccar,larcar);
  grifocarta.resize(anccar,larcar);
  stcarta.resize(anccar,larcar);
  fbase.resize(1000,700);//Ajuste fondos
  fbosque.resize(1000,700);
  fdesierto.resize(1000,700);
  fcielo.resize(1000,700);
  flava.resize(1000,700);
  fmuerte.resize(1000,700);//Ajuste fondos
  his1.resize(1000,700);//Ajuste slides de la hisrtoria
  his2.resize(1000,700);
  his3.resize(1000,700);
  his4.resize(1000,700);
  his5.resize(1000,700);
  his6.resize(1000,700);
  his7.resize(1000,700);
  his8.resize(1000,700);
  his9.resize(1000,700);
  his10.resize(1000,700);
  his11.resize(1000,700);
  his12.resize(1000,700);
  his13.resize(1000,700);
  his14.resize(1000,700);
  his15.resize(1000,700);
  his16.resize(1000,700);
  his17.resize(1000,700);
  his18.resize(1000,700);//Ajuste slides de la hisrtoria
  prota=new Heroe( );
  atk=new Carta(xc1,ycs,xc1+anccar,ycs+larcar);//cartas
  heal=new Carta(xc2,ycs,xc2+anccar,ycs+larcar);
  spirit=new Carta(xc3,ycs,xc3+anccar,ycs+larcar);
  tiamat=new Carta(xcspe,ycs,xcspe+anccar,ycs+larcar);//cartas
  venemigo=new Barra(xbe,ybe,altobar);
  vprota=new Barra(xbp,ybp,altobar);
  besp=new Barra(xesp,yesp,altobar);
  play=new Boton(xboton,yplay,xfboton,yfplay);
  botuto=new Boton(xboton,ybtut,xfboton,yfbtut);
  credits=new Boton(xboton,ycredits,xfboton,yfcredits);//Boton pa los creditos
  salir=new Boton(xboton,ysalir,xfboton,yfsalir);
  smuerte=new Boton(xsmuerte,ysmuerte,xsfmuerte,ysfmuerte);
  volver=new Boton(volverx,volvery,volverxf,volveryf);
  ero=new Enemigo(dano1,cura1,cdatk1,cdheal1);
  undo=new Enemigo(dano2,absorb,cdatk2,cdabs);
  spyro=new Enemigo(dano3,buff,cdatk3,cdbuff);
  doge=new Enemigo(dano4,caos,cdatk4,cdcaos);
  intro=new Storie();
  post1=new Storie();
  post2=new Storie();
  post3=new Storie();
  fin=new Storie();
  
  //song1=new SoundFile(this,"Argonne - Zachariah Hickman.mp3");
  //song1.play();
  
}
void draw()
{
  background(100);
  textFont(letra);
  image(fbosque,fondo2x,0);
  image(fdesierto,fdesx,0);
  image(fcielo,fskyx,0);
  image(flava,flavax,0);
  image(fmuerte,fmuertex,0);
  image(fbase,fondox,fondoy);
  image(his1,his1x,0);
  image(his2,his2x,0);
  image(his3,his3x,0);
  image(his4,his4x,0);
  image(his5,his5x,0);
  image(his6,his6x,0);
  image(his7,his7x,0);
  image(his8,his8x,0);
  image(his9,his9x,0);
  image(his10,his10x,0);
  image(his11,his11x,0);
  image(his12,his12x,0);
  image(his13,his13x,0);
  image(his14,his14x,0);
  image(his15,his15x,0);
  image(his16,his16x,0);
  image(his17,his17x,0);
  image(his18,his18x,0);
  image(tutorial,tutox,0);
  image(creditos1,cred1x,0);
  image(creditos2,cred2x,0);
  if(jugar==0)
  {
  his1x=5000;
  his18x=5000;
  fondox=0;
  fondo2x=5000;
  fdesx=5000;
  fmuertex=5000;
  tutox=5000;
  cred1x=5000;
  cred2x=5000;
  play.mousePressed1();
  botuto.botontut();
  credits.creditos();
  salir.mousesalir();
  intro.contar();
  }
  if(jugar==1)
  {
   if(lvl==1)//Si es el nivel 1
  {
    fondo2x=0;
    fskyx=5000;
    fdesx=5000;
    flavax=5000;
    ero.sprites();
    ero.turnoe();
    ero.ataque();
    ero.display();
    ero.cura();
  }
  if(lvl==2)//Si es el nivel 2
  {
    fdesx=0;
    fskyx=5000;
    fondo2x=5000;
    flavax=5000;
    undo.ataque2();
    undo.turnoe();
    undo.sprites();
    undo.display();
    undo.steal();
  }
  if(lvl==3)
  {
    fskyx=0;
    fdesx=5000;
    fondo2x=5000;
    spyro.turnoe();
    spyro.ataque3();
    spyro.buff();
    spyro.sprites();
    spyro.display();
  }
  if(lvl==4)
  {
    flavax=0;
    fskyx=5000;
    fdesx=5000;
    fondo2x=5000;
    doge.turnoe();
    doge.ataque4();
    doge.caos();
    doge.sprites();
    doge.display();
  }
  //song1.stop();
  his6x=5000;
  his7x=5000;
  his11x=5000;
  his17x=5000;
  his18x=5000;
  fondox=5000;
  
  prota.sprites();
  
  image(acarta,xc1,ycs);
  image(ccarta,xc2,ycs);
  image(espcarta,xc3,ycs);
  image(serpcarta,xcserp,ycs);
  image(grifocarta,xcgrifo,ycs);
  image(stcarta,xcdrake,ycs);
  
  atk.mousePressed(); //Funciones de las Cartas
  atk.accion();
  heal.mousePressed();
  heal.curar();
  spirit.mousePressed();
  spirit.recharge();
  tiamat.mousePressed();
  tiamat.soult(); //Funciones de las Cartas
  tiamat.dspecial();
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
  if(victory>=1)
  {
  fill(0);
  text(cdspe,xcspe+130,ycs+243);
  }
  if(vidap==0)
  {
    jugar=2;
    lvl=1;
    song1.stop();
    if(victory==0)
    {
      special=0;
    }
    if(victory>=1)
    {
      special=1;
    }
  }  
  if(vidae==0)
  {
    hist=0;
    fmuertex=5000;
    fondox= 0;
    fondo2x=5000;
    flavax=5000;
    fskyx=5000;
    fdesx=5000;
    tutox=5000;
    
    if(lvl>victory)
    {
    victory=victory+1;
    }
    if(lvl<=4)
    {
    vidae=100;
    vidap=100;
    espiritu=50;
    }
    if(lvl==1)
    {
      hist=7;
      jugar=5;
    }
    if(lvl==2)
    {
      hist=8;
      jugar=5;
      song1.stop();
      song1.play();
    }
    if(lvl==3)
    {
      hist=12;
      jugar=5;
    }
    if(lvl==4)
    {
      hist=18;
      jugar=5;
    }
    if(lvl==5)
    {
      jugar=0;
      
    }
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
  if(jugar==5)
  {
    post1.contar2();
    post2.contar3();
    post3.contar4();
    fin.contar5();
  }
  if(jugar==9)
  {
  if(credsk==1)
  {
    fondox=5000;
    fondo2x=5000;
    cred1x=0;
    if(keyPressed && key=='1')
    {
      credsk=2;
    }
  }
  if(credsk==2)
  {
    fondox=5000;
    fondo2x=5000;
    cred2x=0;
    cred1x=5000;
    if(keyPressed && key=='2')
    {
      credsk=0;
      jugar=0;
    }
  }
  }
 
}

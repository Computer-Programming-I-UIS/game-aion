//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 
//Descripción:
PImage acarta;
PImage ccarta;
boolean press;
int vidae=100,vidap=100;
int xc1=300,xc2=500,ycs=450,xbe=750,xbp=100,ybe=50,ybp=400;
int daño1=10,cura1=10;
int larcar=250,anccar=175;
Carta atk,heal;
Barra venemigo,vprota;
Enemigo ero;
void setup()
{
  size(1000,700);
  acarta=loadImage("KOSMOS.jpg");
  ccarta=loadImage("RELOJ.jpg");
  acarta.resize(anccar,larcar);
  ccarta.resize(anccar,larcar);
  atk=new Carta(xc1,ycs,xc1+anccar,ycs+larcar);
  heal=new Carta(xc2,ycs,xc2+anccar,ycs+larcar);
  venemigo=new Barra(xbe,ybe,20);
  vprota=new Barra(xbp,ybp,20);
  ero=new Enemigo(daño1,cura1);
}
void draw()
{
  background(100);
  image(acarta,xc1,ycs);
  image(ccarta,xc2,ycs);
  atk.mousePressed(); 
  atk.accion();
  heal.mousePressed();
  heal.curar();
  vprota.displayp();
  venemigo.displaye();
  
  fill(0);
  text(vidae,ybp,50);
  text(vidap,ybe,500);
  
}

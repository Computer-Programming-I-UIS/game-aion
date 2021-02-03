//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 
//Descripción:
PImage acarta;
PImage ccarta;
boolean press;
int vidae=100,vidap=100;
int xc1=200,xc2=400;
Carta atk,heal;
void setup()
{
  size(800,600);
  acarta=loadImage("KOSMOS.jpg");
  ccarta=loadImage("RELOJ.jpg");
  acarta.resize(200,300);
  ccarta.resize(200,300);
  atk=new Carta(xc1,300,xc1+200,500);
  heal=new Carta(xc2,300,xc2+200,500);
}
void draw()
{
  background(100);
  image(acarta,xc1,300);
  image(ccarta,xc2,300);
  atk.mousePressed(); 
  atk.accion();
  heal.mousePressed();
  heal.curar();
  text(vidae,500,50);
  text(vidap,50,500);
}
class Carta
{
  int xi,yi,xf,yf;
  Carta(int tempxi,int tempyi,int tempxf,int tempyf)
  {
    xi=tempxi;
    yi=tempyi;
    xf=tempxf;
    yf=tempyf;
  }
  void mousePressed()
  {
    if(mousePressed)
    {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf)
    {
      press=true;
    }
    }
    if(mouseX<xi || mouseX>xf || mouseY<yi || mouseY>yf)
    {
      press=false;
    }
    
  }
  void accion()
  {
    if(press==true)
    {
      vidae=vidae-10;
      press=false;
      delay(500);
    }
  }
  void curar()
  {
    if(press==true)
    {
      vidap=vidap+20;
      press=false;
      delay(500);
    }
  }
}

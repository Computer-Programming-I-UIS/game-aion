class Boton
{
int xi,yi,xf,yf;
  Boton(int tempxi,int tempyi,int tempxf,int tempyf)
  {
    xi=tempxi;
    yi=tempyi;
    xf=tempxf;
    yf=tempyf;
  }
  void mousePressed()
  {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf)
    {
    fondox= 5000;
    fondo2x=0;
    jugar=true;
    vidap=100;
    espiritu=50;
    vidae=100;
    }
  }
  
}

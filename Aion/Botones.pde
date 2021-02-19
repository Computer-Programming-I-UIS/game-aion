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
  void mousePressed1()
  {
    if(mousePressed && jugar==0)
    {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf)
    {
    fondox= 5000;
    fondo2x=5000;
    tutox=5000;
    hist=1;
    vidap=100;
    espiritu=50;
    vidae=100;
    }
    }
  }
  void mousePressed2()
  {
    if(mousePressed && jugar==0)
    {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf)
    {
    exit();
    }
    }
  }
  void mousePressedm()
  {
    if(mousePressed && jugar==2)
    {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf)
    {
    exit();
    }
    }
  }
  void volvere()
  {
     if(mousePressed && jugar==2)
    {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf )
    {
    jugar=0;
    tutox=5000;
    fmuertex=5000;
    fondox=0;
    }
    }
  }
}

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
  void mousePressedt()
  {
    if(mousePressed && jugar==0)
    {
    if(mouseX>=xi && mouseX<=xf && mouseY>=yi && mouseY<=yf)
    {
    fondox= 5000;
    fondo2x=5000;
    tutox=0;
    fill(255,0,0);
    textFont(letra2);
    textSize(24);
    text("Vida de tu heroe",370,210);
    text("Vida de tu enemigo",600,210);
    text("Tu espiritu(El cual gastaras para usar tus cartas)",795,416);
    text("Coldown de las acciones de tu enemigo",835,200);
    text("Tus cartas",60,490);
    text("Coldown de tus cartas",100,690);
    text("Descripcion" ,940,520);
    text("de tus cartas",940,540);
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

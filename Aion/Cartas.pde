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
    if(press==true && vidae>0 && vidae<=100)
    {
      vidae=vidae-10;
      press=false;
      delay(500);
    }
    
  }
  void curar()
  {
    if(press==true && vidap<100 && vidap>=0)
    {
      vidap=vidap+20;
      press=false;
      delay(500);
    }
  }
  void soult()
  {
    if(press==true && vidap<100 && vidap>=0)
    {
      vidap=100;
     press=false;
     delay(500);
    }
  }
}
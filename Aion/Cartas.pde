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
    if(cdap>0 && vidap>0)
    {
    cdap=cdap-0.1;
    }
    else if(cdap<=0)
    { 
     cdap=0;
    }
    
    if(press==true && vidae>0 && vidae<=100 && espiritu>=5 && cdap==0)
    {
      vidae=vidae-10;
      espiritu=espiritu-5;
      ssprite=3;
      press=false;
      if(vidae>0){
      snormx=800;
      sripx=5000;
      cdap=5;
    }
    }
    
  }
  void curar()
  {
    if(cdhp>0 && vidae<100)
    {
    cdhp=cdhp-0.1;
    }
    else if(cdhp<=0)
    { 
     cdhp=0;
    }
    if(press==true && vidap<100 && vidap>=0 && espiritu>=20 && cdhp==0)
    {
      
      vidap=vidap+20;
      espiritu=espiritu-20;
      psprite=2;
      press=false;
      cdhp=20;
    }
  }
  void recharge()
  {
    if(cdesp>0 && vidae<100)
    {
    cdesp=cdesp-0.1;
    }
    else if(cdesp<=0)
    { 
     cdesp=0;
    }
    if(press==true && vidap<=100 && vidap>=0 && espiritu<100 && cdesp==0)
    {
      espiritu=espiritu+15;
      psprite=3;
      press=false;
      cdesp=10;
    }
    
  }
  /*void soult()
  {
    if(press==true && vidap<100 && vidap>=0 && espiritu>=50)
    {
     vidap=100;
     espiritu=espiritu-50;
     press=false;
    }
  }*/
  
}

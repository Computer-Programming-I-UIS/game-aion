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
    if(press==true && vidae>0 && vidae<=100 && espiritu>=5)
    {
      vidae=vidae-10;
      if (vidae<=0);
      {
       
      }
      espiritu=espiritu-5;
      press=false;
      if(vidae>0){
      ser6x=800;
      ser7x=5000;
    }
      delay(500);
      
      
    }
    
  }
  void curar()
  {
    if(press==true && vidap<100 && vidap>=0 && espiritu>=20)
    {
      
      vidap=vidap+20;
      espiritu=espiritu-20;
      press=false;
      if(vidap>=100)
      {
        vidap=100;
      }
      delay(500);
    }
  }
  void recharge()
  {
    if(press==true && vidap<=100 && vidap>=0 && espiritu<100)
    {
      espiritu=espiritu+15;
      press=false;
      
      delay(500);
      
    }
  }
  void soult()
  {
    if(press==true && vidap<100 && vidap>=0 && espiritu>=50)
    {
     vidap=100;
     espiritu=espiritu-50;
     press=false;
     delay(500);
    }
  }
  
}

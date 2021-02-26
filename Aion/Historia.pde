class Storie
{
  void contar()
  {
  if(hist==1)
  {
    fondox=5000;
    his1x=0;
    
    if(keyPressed && key=='1')
    {   
      hist=2;
    }
  }
  if(hist==2)
  {
    his1x=5000;
    his2x=0;
    if(keyPressed && key=='2')
    {       
      hist=3;     
    }
  }
  if(hist==3)
  {
    his2x=5000;
    his3x=0;
    
    if(keyPressed && key=='3')
    { 
        hist=4;
    }
  }
  if(hist==4)
  {
    his3x=5000;
    his4x=0;
    
    if(keyPressed  && key=='4')
    { 
        hist=5;
    }
  }
  if(hist==5)
  {
    his4x=5000;
    his5x=0;
    
    if(keyPressed && key=='5')
    { 
        hist=6;
    }
  }
  if(hist==6)
  {
    his5x=5000;
    his6x=0;
    
    if(keyPressed && key=='6')
    { 
        jugar=1;
        hist=0;
        his6x=5000;
        lvl=1;
        dano3=1;
    }
  }
}
}

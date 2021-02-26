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
  void contar2()
  {
    if(hist==7)
    {
    fondo2x=5000;
    his7x=0;
    
    if(keyPressed && key=='1')
    {   
      lvl=2;
      jugar=1;
    }
    }
  }
  void contar3()
  {
    if(hist==8)
    {
    fdesx=5000;
    his8x=0;
    
    if(keyPressed && key=='1')
    {   
      hist=9;
    }
    }
    if(hist==9)
    {
    his8x=5000;
    his9x=0;
    if(keyPressed && key=='2')
    {   
      hist=10;
    }
    }
    if(hist==10)
    {
    his9x=5000;
    his10x=0;
    
    if(keyPressed && key=='3')
    {   
      hist=11;
    }
    }
    if(hist==11)
    {
    his10x=5000;
    his11x=0;
    
    if(keyPressed && key=='4')
    {   
      lvl=3;
      jugar=1;
    }
    }
  }
  void contar4()
  {
    if(hist==12)
    {
    fskyx=5000;
    his12x=0;
    
    if(keyPressed && key=='1')
    {   
      hist=13;
    }
    }
    if(hist==13)
    {
    his12x=5000;
    his13x=0;
    if(keyPressed && key=='2')
    {   
      hist=14;
    }
    }
    if(hist==14)
    {
    his13x=5000;
    his14x=0;
    
    if(keyPressed && key=='3')
    {   
      hist=15;
    }
    }
    if(hist==15)
    {
    his14x=5000;
    his15x=0;
    
    if(keyPressed && key=='4')
    {   
      hist=16;
    }
    }
    if(hist==16)
    {
    his15x=5000;
    his16x=0;
    
    if(keyPressed && key=='5')
    {   
      hist=17;
    }
    }
    if(hist==17)
    {
    his16x=5000;
    his17x=0;
    
    if(keyPressed && key=='6')
    {   
      lvl=4;
      jugar=1;
    }
    }
  }
    void contar5()
    {
    if(hist==18)
    {
    flavax=5000;
    his18x=0;
    
    if(keyPressed && key=='1')
    {   
      lvl=1;
      jugar=0;
    }
    }
  }
}

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
        hist=7;
    }
  }
  if(hist==7)
  {
    fondox=5000;
    his6x=5000;
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
    if(keyPressed && key=='7')
    { 
        jugar=1;
    }
  }
  }
}

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
    fondo2x=0;
    tutox=0;
    fill(0);
    textSize(24);
    text("Vida de tu heroe",300,200);
    text("Vida de tu enemigo",600,100);
    text("Tu espiritu(El cual gastaras para usar tus cartas)",400,450);
    text("El temporizador de las acciones de tu enemigo",800,200);
    text("Tus cartas",100,600);
    text("Temporizador de tus cartas(Cuando llegue a 0 podras usarlas)",100,670);
    text("Descripcion de tus cartas",800,620);
    if(keyPressed && key=='7')
    { 
        jugar=1;
    }
  }
  }
}

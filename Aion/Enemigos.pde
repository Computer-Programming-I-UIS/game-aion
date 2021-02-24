class Enemigo
{
  int dano,cura;
  float tatk,tspe;
  Enemigo(int td,int tc,float tcda,float tcds)
  {
    dano=td;
    cura=tc;
    tatk=tcda;
    tspe=tcds;
  }
  void sprites()
  {
    switch (ssprite)
    {
    case 0:
    {
      delay(0);
      if(lvl==1)
      {
      image(serpnorm,snormx,serpy);
      }
      if(lvl==2)
      {
        image(mantn,snormx,serpy);
      }
      if(lvl==3)
      {
        image(spyron,snormx,serpy);
      }
    }
    break;
    case 1://cuando pega
    {
      snormx=5000;
      satkx=700;
      if(lvl==1)
      {
      image(serpatk,satkx,serpy);
      }
      if(lvl==2)
      {
        image(mantatk,satkx,serpy);
      }
      if(lvl==3)
      {
        image(spyron,snormx,serpy);
      }
      ssprite=0;
      if(ssprite==0)
      {
      satkx=5000;
      snormx=700;
      }
    }
    break;
    case 3: //Cuando le pegan
    {
      snormx=5000;
      sdanox=700;
      if(lvl==1)
      {
      image(serpdano,sdanox,serpy);
      }
      if(lvl==2)
      {
        image(mantdano,sdanox,serpy);
      }
      if(lvl==3)
      {
        image(spyron,snormx,serpy);
      }
      ssprite=0;
      if(ssprite==0)
      {
      sdanox=5000;
      snormx=700;
      }
    }
    break;
    /*case 4: //Cuando muere
    {
      if(lvl==1)
      {
      image(serprip,sripx,serpy); 
      }
    }
    break;*/
    }
  }
  void turnoe()
  { 
    if(tatk>0 && vidap>0)
    {
    tatk=tatk-0.1;
    }
    else if(tatk<=0)
    { 
     tatk=0;
    }
    if(tspe>0 && vidae<100)
    {
    tspe=tspe-0.1;
    }
    else if(tspe<=0)
    { 
     tspe=0;
    }
 }
 void ataque() //Acciones del primer enemigo
 {
   if(tatk==0 && vidap>0)
   {
     vidap=vidap-dano;
     tatk=cdatk1;
     ssprite=1;
     psprite=1;
   }
 }
 void cura()
 {
   if(tspe==0 && vidae<100 && vidae>0)
   {
     vidae=vidae+cura;
     
     tspe=cdheal1;
     //ssprite=2;
   }
 }
 void display()
 {
   fill(#FFFFFF);
   textSize(30);
   text(tatk,600,80);
   text(tspe,800,80);
 }
 void ataque2()//acciones del segundo enemigo
 {
   if(tatk==0 && vidap>0)
   {
     vidap=vidap-dano;
     tatk=cdatk2;
     ssprite=1;
     psprite=1;
   }
 }
 void steal()
 {
   if(tspe==0 && vidae<100 && vidae>0)
   {
     espiritu=espiritu-cura;
     tspe=cdabs;
     //ssprite=2;
   }
 }
 void ataque3()//ata1ue del tercer enemigo
 {
   if(tatk==0 && vidap>0)
   {
     vidap=vidap-dano;
     tatk=cdatk3;
     ssprite=1;
     psprite=1;
   }
 }
 void buff()
 {
   if(tspe==0 && vidae<100 && vidae>0)
   {
     dano=dano+buff;
     buff=dano+buff;
     tspe=cdbuff;
     //ssprite=2;
   }
 }
}

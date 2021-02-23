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
      image(serpnorm,serpnormx,serpy);
      }
      if(lvl==2)
      {
        image(mantn,serpnormx,serpy);
      }
    }
    break;
    case 1://cuando pega
    {
      serpnormx=5000;
      serpatkx=700;
      if(lvl==1)
      {
      image(serpatk,serpatkx,serpy);
      }
      if(lvl==2)
      {
        image(mantatk,serpatkx,serpy);
      }
      ssprite=0;
      if(ssprite==0)
      {
      serpatkx=5000;
      serpnormx=700;
      }
    }
    break;
    case 3: //Cuando le pegan
    {
      serpnormx=5000;
      serpdanox=700;
      if(lvl==1)
      {
      image(serpdano,serpdanox,serpy);
      }
      if(lvl==2)
      {
        image(mantdano,serpdanox,serpy);
      }
      ssprite=0;
      if(ssprite==0)
      {
      serpdanox=5000;
      serpnormx=700;
      }
    }
    break;
    case 4: //Cuando muere
    {
      if(lvl==1)
      {
      image(serprip,serpripx,serpy); 
      }
    }
    break;
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
     psprite=1;
   }
 }
 void steal()
 {
   if(tspe==0 && vidae<100 && vidae>0)
   {
     espiritu=espiritu-absorb;
     tspe=cdabs;
     //ssprite=2;
   }
 }
}

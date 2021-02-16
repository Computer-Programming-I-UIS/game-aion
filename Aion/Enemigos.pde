class Enemigo
{
  int dano,cura;
  float tatk,theal;
  Enemigo(int td,int tc,float tcda,float tcdh)
  {
    dano=td;
    cura=tc;
    tatk=tcda;
    theal=tcdh;
  }
  void sprites()
  {
    switch (ssprite)
    {
    case 0:
    {
      delay(0);
      image(serpnorm,serpnormx,serpy);
    }
    break;
    case 1://cuando pega
    {
      serpnormx=5000;
      serpatkx=700;
      image(serpatk,serpatkx,serpy);
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
      image(serpdano,serpdanox,serpy);
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
      image(serprip,serpripx,serpy); 
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
    if(theal>0 && vidae<100)
    {
    theal=theal-0.1;
    }
    else if(theal<=0)
    { 
     theal=0;
    }
 }
 void ataque()
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
   if(theal==0 && vidae<100 && vidae>0)
   {
     vidae=vidae+cura;
     
     theal=cdheal1;
     //ssprite=2;
   }
 }
 void display()
 {
   fill(#FFFFFF);
   textSize(30);
   text(tatk,600,80);
   text(theal,800,80);
 }
}

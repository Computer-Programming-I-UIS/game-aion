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
      image(serpnorm,serpnormx,100);
    }
    break;
    case 1://cuando pega
    {
      serpnormx=5000;
      serpatkx=800;
      image(serpatk,serpatkx,100);
      ssprite=0;
      if(ssprite==0)
      {
      serpatkx=5000;
      serpnormx=800;
      }
    }
    break;
    case 3: //Cuando le pegan
    {
      serpnormx=5000;
      serpdanox=800;
      image(serpdano,serpdanox,100);
      ssprite=0;
      if(ssprite==0)
      {
      serpdanox=5000;
      serpnormx=800;
      }
    }
    break;
    case 4: //Cuando muere
    {
      image(serprip,serpripx,100); 
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
   }
 }
 void cura()
 {
   if(theal==0 && vidae<100 && vidae>0)
   {
     vidae=vidae+cura;
     
     theal=cdheal1;
     ssprite=2;
   }
 }
 void display()
 {
   textSize(24);
   text(tatk,800,100);
   text(theal,900,100);
 }
}

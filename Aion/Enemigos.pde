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
    case 0://normal
    {
      image(serpnorm,ser7x,100);
      delay(0);
    }
    case 1://cuando pega
    {
      image(serpatk,ser7x,100);
    }
    case 3: //Cuando le pegan
    {
      ser7x=5000;
      ser6x=800;
      image(serpdano,ser6x,100);
      delay(50);
      ser6x=5000;
      ser7x=800;
      ssprite=0;
      
    }
    case 4: //Cuando muere
    {
      image(serprip,ser8x,100); 
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

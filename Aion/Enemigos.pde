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
   }
 }
 void cura()
 {
   if(theal==0 && vidae<100 && vidae>0)
   {
     vidae=vidae+cura;
     
     theal=cdheal1;
   }
 }
 void display()
 {
   textSize(24);
   text(tatk,800,100);
   text(theal,900,100);
 }
}

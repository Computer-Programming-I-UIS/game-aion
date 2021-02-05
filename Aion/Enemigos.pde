class Enemigo
{
  int dano,cura;
  Enemigo(int td,int tc)
  {
    dano=td;
    cura=tc;
  }
  void turnoe()
  {
    if(vidap>0 && vidap<=100);
    {
      vidap=vidap-dano;
      delay(2000);
    }
    if(vidae>=0 && vidae<100);
    {
      vidae=vidae+cura;
      delay(4000);
    }
    
  }
}

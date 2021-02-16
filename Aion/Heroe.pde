class Heroe
{
  void sprites()
  {
    switch (psprite)
    {
    case 0:
    {
      image(heroe1,protax1,protay);
    }
    break;
    case 1://cuando le pegan
    {
      protax1=5000;
      pdanox=150;
      image(heroedano,pdanox,protay);
      psprite=0;
      if(psprite==0)
      {
      pdanox=5000;
      protax1=150;
      }
    }
    break;
    case 2: //Cuando se cura
    {
      protax1=5000;
      phealx=150;
      image(heroeheal,phealx,protay);
      psprite=0;
      if(psprite==0)
      {
      phealx=5000;
      protax1=150;
      }
    }
    break;
    case 3: //Cuando regenra espiritu
    {
      protax1=5000;
      pmanax=150;
      image(heroemana,pmanax,protay);
      psprite=0;
      if(psprite==0)
      {
      pmanax=5000;
      protax1=150;
      }
    }
    break;
    }
  }
}

class Barra
{
  int xi,yi,xf,yf;
  Barra(int tempxi,int tempyi,int tempxf,int tempyf)
  {
    xi=tempxi;
    yi=tempyi;
    xf=tempxf;
    yf=tempyf;
  }
  void display()
 {
   rect(xi,yi,xf,yf);
 }
}

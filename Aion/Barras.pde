class Barra
{
  int xi,yi,alto;
  Barra(int tempxi,int tempyi,int talto)
  {
    xi=tempxi;
    yi=tempyi;
    alto=talto;
  }
  void displaye()
 {
   noFill();
   rect(xi,yi,100,alto);
   fill(#6A0507);
   rect(xi,yi,vidae,alto);
   
 }
 void displayp()
 {
   noFill();
   rect(xi,yi,100,alto);
   fill(#6A0507);
   rect(xi,yi,vidap,alto);
 }
}

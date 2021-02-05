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
   rect(xi,yi,200,alto);
   fill(#6A0507);
   rect(xi,yi,vidae*2,alto);
   
 }
 void displayp()
 {
   noFill();
   rect(xi,yi,200,alto);
   fill(#6A0507);
   rect(xi,yi,vidap*2,alto);
 }
}

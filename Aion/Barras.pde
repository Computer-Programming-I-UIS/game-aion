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
   image(Fondo1,fondox,fondoy);
 }
 void displayp()
 {
   noFill();
   rect(xi,yi,200,alto);
   fill(#6A0507);
   rect(xi,yi,vidap*2,alto);
  
 }
 void displayesp()
 {
   noFill();
   rect(xi,yi,200,alto);
   fill(#00FFDB);
   rect(xi,yi,espiritu*2,alto);
 }
}

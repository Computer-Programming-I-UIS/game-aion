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
   rect(xi,yi,400,alto);
   fill(#BC0410);
   rect(xi,yi,vidae*4,alto);
   image(fbase,fondox,fondoy);
 }
 void displayp()
 {
   noFill();
   rect(xi,yi,400,alto);
   fill(#BC0410);
   rect(xi,yi,vidap*4,alto);
  
 }
 void displayesp()
 {
   noFill();
   rect(xi,yi,400,alto);
   fill(#050CAD);
   rect(xi,yi,espiritu*4,alto);
 }
}

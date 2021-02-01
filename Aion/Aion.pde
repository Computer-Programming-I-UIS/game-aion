//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 
//Descripción:
PImage acarta;
PImage ccarta;
void setup()
{
  size(800,600);
  acarta=loadImage("KOSMOS.jpg");
  ccarta=loadImage("RELOJ.jpg");
  acarta.resize(200,300);
  ccarta.resize(200,300);
}
void draw()
{
  background(100);
  image(acarta,200,300);
  image(ccarta,400,300);
}

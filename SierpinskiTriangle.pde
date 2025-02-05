public void setup()
{
  size(650,650);
  background(0);
}
public void draw()
{
 
}
public void mouseClicked()//optional
{
  background(0);
  sierpinski(mouseX,mouseY,650-mouseX);
}  
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    fill(color((int)(Math.random() * 255),(int)(Math.random() * 255), (int)(Math.random() * 255)));
    triangle(x, y, x + len, y, (x+x+len)/2, y-len);
  } else {
    fill(color((int)(Math.random() * 255),(int)(Math.random() * 255), (int)(Math.random() * 255)));
    sierpinski(x, y, len/2);
    fill(color((int)(Math.random() * 255),(int)(Math.random() * 255), (int)(Math.random() * 255)));
    sierpinski(x + len/2, y, len/2);
    fill(color((int)(Math.random() * 255),(int)(Math.random() * 255), (int)(Math.random() * 255)));
    sierpinski(x + len/4, y - len/2, len/2);
  }  
}

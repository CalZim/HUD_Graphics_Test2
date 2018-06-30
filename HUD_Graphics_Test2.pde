PImage img;
float a = 43;

float y;
float p = 8;
float r;

float h = 7;

float av = 8.6;
float vv = 3.24;
float gv;

float g = 6.3;

void setup()
{
  size(2200, 1200);
  background(0);
  stroke(0, 255, 68);
  fill(0, 255, 68, 110);
  
  img = loadImage("IMG_0851_(1).jpg");
}

void draw()
{
  background(111);
  image(img, -400, -1000);
  //line(1100, 50, 1100, 150);
  
  /*for(int i = 0; i < 40; i = i + 1)
  {
    if(i * 100 +1100 + h * 100 < 1500)
    {
    if(i * 100 +1100 + h * 100 > 700)
    {
      line(i * 100 +1100 + h * 100, 65, i * 100 + 1100 + h * 100, 135);
      //line(-i * 100 +1100 + h * 100, 65, -i * 100 + 1100 + h * 100, 135);
    }
    }
  }
  
  for(int i = 0; i < 40; i = i + 1)
  {
    if(-i * 100 +1100 + h * 100 < 1500)
    {
    if(-i * 100 +1100 + h * 100 > 700)
    {
      //line(i * 100 +1100 + h * 100, 65, i * 100 + 1100 + h * 100, 135);
      line(-i * 100 +1100 + h * 100, 65, -i * 100 + 1100 + h * 100, 135);
    }
    }
  }
 */ 
  
  
  rect(1800, 1100, 100, -a*10); //main barometer draw code
  
  for(int i = 1; i < 12; i = i + 1)  //draws main lines for barometer bar
  {
    strokeWeight(2);
    line(1780, i*100, 1920, i*100);
   
  }
  
  for(int i = 1; i < 11; i = i + 1)  //draws secondary lines for barometer bar
  {
    strokeWeight(2);
    line(1790, i*100+50, 1910, i*100+50);
   
  }
  
  
  
  rect(300, 1100, 100, -av*10); //main aerial velocity draw code
  
  for(int i = 1; i < 12; i = i + 1)  //draws main lines for aerial velocity bar
  {
    strokeWeight(2);
    line(280, i*100, 420, i*100);
   
  }
  
  for(int i = 1; i < 11; i = i + 1)  //draws secondary lines for aerial velocity bar
  {
    strokeWeight(2);
    line(290, i*100+50, 410, i*100+50);
   
  }
  
  
  
  rect(2000, 600, 100, -vv*25); //main vertical velocity draw code
  
  for(int i = 1; i < 8; i = i + 1)  //draws main lines for vertical velocity bar
  {
    strokeWeight(2);
    line(1980, i*100+200, 2120, i*100+200);
  }
  
  for(int i = 1; i < 7; i = i + 1)  //draws secondary lines for vertical velocity bar
  {
    strokeWeight(2);
    line(1990, i*100+250, 2110, i*100+250);
  }
  
  
  
  rect(100, 600, 100, -g*25); //main g force draw code
  
  for(int i = 1; i < 8; i = i + 1)  //draws main lines for g force bar
  {
    strokeWeight(2);
    line(80, i*100+200, 220, i*100+200);
  }
  
  for(int i = 1; i < 7; i = i + 1)  //draws secondary lines for g force bar
  {
    strokeWeight(2);
    line(90, i*100+250, 210, i*100+250);
  }
  


  
  for(int i = 0; i < 40; i = i + 1) //main circle code
  {
    float po = p*10;  // pitch offset
    float ro = r*10;  //roll offset
    
    float c1 = sqrt((400 * 400) - ((i * 100 + po) * (i * 100 + po)));  //chord 1 length
    float c2 = sqrt((400 * 400) - ((i * 100 - po) * (i * 100 - po)));  //chord 2 length
    
    line(1100 - c1, i * 100 + 600 + po, 1100 + c1, i * 100 + 600 + po);  //chord 1 draw
    line(1100 - c2, -i * 100 + 600 + po, 1100 + c2, -i * 100 + 600 + po);  //chord 2 draw
  }
  
  
  
  line(1000, 600, 1050, 600);  //cursor draw code
  line(1200, 600, 1150, 600);
  line(1050, 600, 1100, 580);
  line(1050, 600, 1100, 620);
  line(1150, 600, 1100, 580);
  line(1150, 600, 1100, 620);
  line(1095, 600, 1105, 600);
  
  
  
  for(int i = 0; i > 8; i = i + 1)
  {
    println("draw");
    line(i * 100 + 700, 50, i * 100 + 700, 150);
  }
  
  
  
}
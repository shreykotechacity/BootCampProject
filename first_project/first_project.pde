Star[] stars = new Star[2000]; //An array for 2000 "Stars" to spawn in the sketch.

float speed;
//This variable will be able to control the speed much easier instead of plugging in values in the update function in the ParticleStar script. 

float xPos; // position of text along x-axis
float vx; // speed of text in x-direction
String message; //The message to the user on screen

String radu;
String giacomo;
String tarroni;

void setup()
{
  size(1000, 1000); //Size of the sketch is 1000px wide and 1000px tall.
  
  for (int i = 0; i < stars.length; i++) 
  {
    stars[i] = new Star();
  }
  //This is a loop function which while keep respawning the same 100 stars over and over again.
  
  xPos = width;  // Initialise xPos to right of sketch
  vx = -5; // Set speed in x-direction to -8 from direction left to right. 
  message = "Move the mouse - see what happens!";
  
  radu = "Radu Jianu";
  giacomo = "Giacomo";
  tarroni = "Tarroni";
  
}


void draw()
{
  background(0);
  
  translate(width/2, height/2);
  //Before this function was put in, the particles were fanning out from the top left corner.
  //This ensures that the stars fan out from the centre to create that effect. 
  
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].update(); //This function will keep updating the stars at 60frames a second when they spawn.
    stars[i].show(); //This function will enable us to see these stars being spawned.
  }
  //I have created new functions of these two classes on the next tab called ParticleStar.
  
  xPos = xPos + vx;  // Change x-position on each redraw
  
  fill(255); //Colour of the text
  textAlign(RIGHT,RIGHT);
  textSize(24);
  text(message, xPos, 0, -500);
  if(xPos == 0)
  {
    xPos = width; 
    xPos = xPos + vx; //Changes the position on each re draw. (Remebering that the draw method is updated approx 60 times a second)
    text(message, xPos, 0, -500);
  }
  
  if (mouseX < width/2)
  {
    fill(random(255), random(255), random(255), 200);
    ellipse(-250, -250, 150, 150);
    
    fill(255);
    text(radu, -190, -240);
  }
  else
  {
    fill(random(255), random(255), random(255), 200);
    rect(250, 250, 150, 150);
    
    fill(255);
    text(giacomo, 380, 315);
    
    fill(255);
    text(tarroni, 370, 355);
  } 
  
  
}

class Star //Creating a new class called "Star". 
{
  float x;
  float y; 
  float z; 
  //New variables for the x, y and z co-ordinates to allow the paricles(ellipses)to spawn in the sketch.
  
  
  Star()
  {
    x = random(-width, width); //Allowing the particles to spawn at random X locations.
    y = random(-height, height); //Allowing the particles to spawn at random Y locations.
    z = random(width); //Using "z" for a 3D effect-to make the effect that they are closer and far away. 
  }
  
  void update() //Creating a new "update" function.
  {
    z = z - 10; //This controls the speed at which the stars move.
    if (z < 1)
    {
      z = width;
      x = random (-width, width);
      y = random (-height, height);      
      
    } 
  }

  void show() //Creating a new "show" function
  {
    fill(random(255), random(255), random(255));
    noStroke(); 
    
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z, 0, width, 16, 0);
    //Making another variable called r which will enlarge these stars as move closer.
    //Mapping the Z value which goes between 0 and the width
    //So when the stars are close they will have a size of 16px but when they are far you wouldnt be able to see them at all becuase the end value is 0.
    
    ellipse(sx, sy, r, r);
    //The ellipse's(stars) will always be drawn at a size of "r" pixels. 
    //The variable sx and sy will allow these "stars" to spwan at random points.
   
  }

}

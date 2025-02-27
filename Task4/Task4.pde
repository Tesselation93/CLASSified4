  // Declare an array to hold 10 Circle instances
  
Circle[] circles = new Circle[10];

  // Setup function + set canvas size
  
void setup() {
  size(500, 500); 
  
  // Loop to create 10 Circle instances with unique positions
  
  for (int i = 0; i < circles.length; i++) {
    
  // Create a new Circle with a unique position - random x & y position within canvas width
  
    float x = random(width); 
    float y = random(height);
    
  // Add Circle to array
  
    circles[i] = new Circle(x, y); 
  }
}

  // Circle class
  
class Circle {
  // Attributes for x and y position
  float xposition, yposition; 
  
  // Constructor to initialize the x and y position
  
  Circle(float x, float y) {
    xposition = x;
    yposition = y;
  }
  
  // Display method
  
  void display() {
    fill(#66CEB8);
    ellipse(xposition, yposition, 100, 100);
  }
  
  // Move method that moves the circle
  
  void move(float dx, float dy) {
    
  // move() adjusts  pos of circle by adding dx to its xposition and dy to its yposition 
    xposition += dx; 
    yposition += dy; 
    
  // Redraw circle at new pos 
 
     display(); 
  }
}

  // Draw function to call move for each circle

void draw() {
  background(255); 
  
  // Move each circle with a small value
  
  for (Circle c : circles) {
    
  // Move is called on each element of the array of Circles, with 3 units added to both x,y pos
  
    c.move(3, 3); 
    
  }
}

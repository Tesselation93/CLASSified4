  // Declare an array to hold 10 Circle instances
  
Circle[] circles = new Circle[10];

  // Setup function to initialize the canvas
  
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
  float xposition, yposition; // Attributes for x and y position
  
  // Constructor to initialize the x and y position
  
  Circle(float x, float y) {
    xposition = x;
    yposition = y;
  }
  
  // Display method to draw a circle at the given position
  
  void display() {
    ellipse(xposition, yposition, 50, 50);
  }
  
  // Move method that moves the circle
  
  void move(float dx, float dy) {
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
    
  // Move by two units
    c.move(2, 2); 
    
  }
}

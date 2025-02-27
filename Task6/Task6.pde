// In this task you will create an integer array with 2 dimensions, that holds values of 0, 1, 0, 1, etc.


  // Double int called board[][] with the length of 8 in both arrays

int[][] board = new int[8][8];

void setup() {
  
  size(320, 320);

  // Side length for each rect
  int sideLength = 40; 

  // Create double for loop - looping through the board and alternates

  for (int x = 0; x < board.length; x++) {
    for (int y = 0; y < board[x].length; y++) {

  // Alternate between ass. value 0 and 1
 
      board[x][y] = (x + y) % 2;
    }
  }
}

void draw() {

  int sideLength = 40;

// Create a double loop to draw rectangles
  
  for (int x = 0; x < board.length; x++) {
    for (int y = 0; y < board[x].length; y++) 
  
  {

// Fill balck and white

      if (board[x][y] == 0) {
        
        fill(0); 
        
      } else {
        
        fill(255);
      }
      
// Draw recktangle

      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}


  // Setup function

void setup() {

  // Call method with the parameters that are valid

  printPartOfWord("København", 0, 3);
}

  // Method for printPartOfWord() with the three given parameters

void printPartOfWord(String word, int startIndex, int endIndex) {

  // Call method from setup with the three given parameters

  String name = "København".substring(0, 3);
  {

    println(name);
  }

  // Test length of name is above 4 characters 

  if (name.length() < 4) {
    println(name);
  
  } else {
    
  // Change call to return the 4 last letters in any given String
  
    String lastFour = name.substring(name.length() - 4);
    println(lastFour);
    
  }

// If negative values are given by user, add appropriate message for user

  if (startIndex < 0 || endIndex < 0) {
    println("Invalid Input");

    // Exit the method if input is invalid
    return;
  }
}

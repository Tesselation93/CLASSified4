// Add array as global variable: int[] arr = { 28, 230, 9, 310,72}

int[] arr = {28, 230, 9, 310, 72};

// Add a setup method, from where you will call getRandom()

void setup(){
 getRandomElement();

}

// Write a method, getRandom() that returns a random element from the above array.

void getRandomElement(){
  
   int randomElement = (int)random(arr.length);
     
     println(arr[randomElement]);
}

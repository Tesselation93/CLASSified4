
// Declare and initialize a String array which we will use to hold the names of five top rappers

String[] rapNames = {"Rick Ross", "Jadakiss", "Redman", "Dr. Dre", "Lauren Hill"};
String[] songs = {"Trilla", "Verzuz", "Blackout", "Forgot About Dre", "That Thing"};

// Declare and initialize another String array which we will use to correspondingly hold the hits of the 5 artists in the former array.

String[] hitList = new String[rapNames.length];

void setup() {

  println("Top Rappers:");

  // Write a for-loop or a for-each loop that prints each name in the array. The output must look like a numbered list.

  for (int i = 0; i < rapNames.length; ++i) {

    println((i + 1) + ". " + rapNames[i]);
  }

  // Print artist and hitsong

  for (int i = 0; i < rapNames.length; i++) {
    hitList[i] = rapNames[i] + ": " + songs[i];
  }

  for (int i = 0; i < hitList.length; i++) {
    println((i + 1) + ". " + hitList[i]);
  }
}

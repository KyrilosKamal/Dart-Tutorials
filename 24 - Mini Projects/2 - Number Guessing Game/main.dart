import 'dart:io';
import 'dart:math';

void main() {
  // Number Guessing Game
  print("Welcome to the Number Guessing Game!");
  print("I'm thinking of a number between 1 and 100.");
  print("You have 5 attempts to guess it correctly.\n");

  int targetNumber = Random().nextInt(100) + 1; // 1 to 100

  int guess = 0;
  int attempts = 0;
  int maxAttempts = 5;
  bool isGuessed = false;

  while (attempts < maxAttempts) {
    stdout.write("Attempt ${attempts + 1}: Enter your guess: ");
    String? guessInput = stdin.readLineSync();

    if (guessInput == null || guessInput.isEmpty) {
      print(" Invalid input. Please enter a number.\n");
      continue;
    }
    int? guess = int.tryParse(guessInput);
    if (guess == null || guess < 1 || guess > 100) {
      print(" Please enter a valid number between 1 and 100.\n");
      continue;
    }
    attempts++;
    if (guess < targetNumber) {
      print(" Too low! Try again.\n");
    } else if (guess > targetNumber) {
      print(" Too high! Try again.\n");
    } else {
      print(" Congratulations! You guessed the number in $attempts attempts.");
      isGuessed = true;
      break;
    }
  }
}

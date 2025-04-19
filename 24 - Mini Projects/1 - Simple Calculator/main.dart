import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to the Simple Calculator App!");

  print("Please enter the first number:");
  String? firstInput = stdin.readLineSync();
  if (firstInput == null || firstInput.isEmpty) {
    print("Invalid input. Please enter a number.");
    return;
  }
  double firstNumber = double.parse(firstInput);

  print("Please enter the second number:");
  String? secondInput = stdin.readLineSync();
  if (secondInput == null || secondInput.isEmpty) {
    print("Invalid input. Please enter a number.");
    return;
  }
  double secondNumber = double.parse(secondInput);

  // Display the menu
  print("Please select an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");
  print("5. Modulus (%)");
  print("6. Exponentiation (^)");
  print("7. Square Root (√)");
  print("8. Exit");

  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      // Call the addition function
      // to perform addition and print the result
      sum(firstNumber, secondNumber);
      break;
    case 2:
      // Call the subtraction function
      // to perform subtraction and print the result
      subtraction(firstNumber, secondNumber);
      break;
    case 3:
      // Call the multiplication function
      // to perform multiplication and print the result
      multiplication(firstNumber, secondNumber);
      break;
    case 4:
      // Call the division function
      // to perform division and print the result
      division(firstNumber, secondNumber);
      break;
    case 5:
      // Call the modulus function
      // to perform modulus and print the result
      modulus(firstNumber, secondNumber);
      break;
    case 6:
      //  Call the exponentiation function
      // to perform exponentiation and print the result
      exponentiation(firstNumber, secondNumber);
      break;
    case 7:
      // Call the square root function
      squareRoot(firstNumber);
      break;
    case 8:
      print("Exiting the calculator. Goodbye!");
      return;
    default:
      print("Invalid choice. Please try again.");
      break;
  }
  // Ask if the user wants to perform another calculation
  print("Do you want to perform another calculation? (y/n)");
  String? anotherCalculation = stdin.readLineSync();
  if (anotherCalculation != null && anotherCalculation.toLowerCase() == 'y') {
    main(); // Restart the calculator
  } else {
    print("Thank you for using the Simple Calculator App! Goodbye!");
  }
}

// Function to perform addition
void sum(double input1, double input2) {
  double result = input1 + input2;
  print("Result: $input1 + $input2 = $result");
}

// Function to perform subtraction
void subtraction(double input1, double input2) {
  double result = input1 - input2;
  print("Result: $input1 - $input2 = $result");
}

// Function to perform multiplication
void multiplication(double input1, double input2) {
  double result = input1 * input2;
  print("Result: $input1 * $input2 = $result");
}

// Function to perform division
void division(double input1, double input2) {
  if (input2 != 0) {
    double result = input1 / input2;
    print("Result: $input1 / $input2 = $result");
  } else {
    print("Error: Division by zero is not allowed.");
  }
}

// Function to perform modulus
void modulus(double input1, double input2) {
  double result = input1 % input2;
  print("Result: $input1 % $input2 = $result");
}

// Function to perform exponentiation
void exponentiation(double input1, double input2) {
  double result = pow(input1, input2).toDouble();
  print("Result: $input1 ^ $input2 = $result");
}

// Function to perform square root
void squareRoot(double input1) {
  if (input1 >= 0) {
    double result = sqrt(input1);
    print("Result: √$input1 = $result");
  } else {
    print("Error: Square root of negative number is not allowed.");
  }
}

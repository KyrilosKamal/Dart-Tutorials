import 'dart:math';

void main() async {
  /* -------------------------------------------------------------------------- */
  /*                                  Function                                  */
  /* -------------------------------------------------------------------------- */
  /**
   * In Dart, a function is a unit of code that is used to perform a specific task and can be reused.
   * Functions can take parameters and return values.
   * Functions can be defined using the `void` keyword if they do not return a value, or by specifying the return type.
   */
  // Definition of a simple Function:
  void greet() {
    print("Hello, World!");
  }

  // Calling the function:
  greet(); // Output: Hello, World!

  // Function with parameters that returns a value:
  int add(int a, int b) {
    return a + b;
  }

  // Calling the function and storing the result:
  int sum = add(5, 3); // sum = 8
  print("Sum: $sum"); // Output: Sum: 8

  // Function with optional parameters:
  void displayInfo(String name, int? age) {
    if (age != null) {
      print("Name: $name, Age: $age");
    } else {
      print("Name: $name, Age: Not provided");
    }
  }

  // Calling the function with and without optional parameter:
  displayInfo("Alice", 25); // Output: Name: Alice, Age: 25
  displayInfo("Bob", null); // Output: Name: Bob, Age: Not provided

  //Function using short form
  int square(int x) => x * x; // Short form of function
  print("Square of 4: ${square(4)}"); // Output: Square of 4: 16

  /* -------------------------------------------------------------------------- */
  /*                               Function Types                               */
  /* -------------------------------------------------------------------------- */

  /**
   * In Dart, functions are objects of type Function, which means they can be:
   * 1. Stored in variables.
   * 2. Passed as arguments to other functions.
   * 3. Returned from functions
   */
  //Example:
  Function greeting = () => print("Hello, Dart!");
  greeting(); // Output: Hello, Dart!

  //The function type can also be specified more specifically:
  int Function(int, int) multiply = (a, b) => a * b; // Function type
  print("Multiplication: ${multiply(4, 5)}"); // Output: Multiplication: 20

  /* -------------------------------------------------------------------------- */
  /*                               Function Scope                               */
  /* -------------------------------------------------------------------------- */
  /**
   * The scope in Dart defines where variables and functions can be accessed.
   * Types of scopes:
   * 1. Global scope: Variables defined outside a function and can be accessed from anywhere in the file.
   * 2. Function scope: Variables defined inside a function and cannot be accessed from outside it.
   * 3. Block scope: Variables defined inside a {} block and cannot be accessed from outside it.
   */
  {
    int x = 10; // Function Scope

    if (x > 5) {
      int y = 20; // Block Scope
      print(x + y); // Output: 30
    }

    // print(y); // Error: y is not accessible here
  }

  /* -------------------------------------------------------------------------- */
  /*                             Anonymous Functions                            */
  /* -------------------------------------------------------------------------- */
  /**
   * Anonymous functions (or lambda functions) are functions that do not have a name.
   * They are often used as arguments to higher-order functions or for short-lived tasks.
   * Syntax: (parameters) { function body }
   * 
   * Example:
   * Using an anonymous function to sort a list:
   */
  List Numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  Numbers.forEach((num) {
    print(num * 2); // Output: 2, 4, 6, 8, 10, 12, 14, 16, 18, 20
  });

  /* -------------------------------------------------------------------------- */
  /*                             Recursive Functions                            */
  /* -------------------------------------------------------------------------- */

  /**
 * Definition:
 * A recursive function is a function that calls on itself to solve a problem by breaking it down into smaller problems.
 * It consists of two main parts:
 * 1. Base case: The condition under which the function stops calling itself.
 * 2. Recursive case: The part of the function that calls itself with a modified argument.
 */
  // Example: Factorial function
  int factorial(int i) {
    if (i <= 1) {
      return 1; // Base case
    } else {
      return i * factorial(i - 1); // Recursive case
    }
  }

  print(factorial(5)); // Output: 120

  /* -------------------------------------------------------------------------- */
  /*                            Asynchronous Function                           */
  /* -------------------------------------------------------------------------- */

  /**
   * Asynchronous functions are used to perform tasks that may take time to complete, such as network requests or file I/O.
   * They allow the program to continue executing while waiting for the task to finish.
   * In Dart, asynchronous functions are defined using the `async` keyword and return a `Future` object.
   * The `await` keyword is used to wait for the result of a `Future` before proceeding with the execution.
   */
  print("Starting async function...");
  String Data = await fetcData(); // Calling the async function
  print(Data); // Output: Data fetched!
  print("Async function completed."); // Output: Async function completed.
}

Future fetcData() async {
  // Simulating a network request with a delay
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched!";
}

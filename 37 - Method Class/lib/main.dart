void main() {
  /**
   * What is Method Class?
   * A function defined within a class and used to define the behavior of objects. 
   * Methods are an essential part of object-oriented programming (OOP) in Dart.
   * ==============================================================================
   * Types of Methods in Dart:
   * 1 - An instance method is a function defined within a class and used across objects of the class. It can access object properties using this.
   * 2 - Static Method: A function defined using the static keyword and called directly from a class without creating an object.
  */

  Calculator calc = new Calculator();
  // Instance Method
  int sum = calc.add(10, 20);
  print(sum); // Output: 30
  print("==========================");
  // Static Method
  int multiply = Calculator.multiply(10, 20);
  print(multiply); // Output: 200

  /**
   * Important Notes
   * 1. Instance Methods: Used to access and manipulate object properties.
   * 2. Static Methods: Useful for functions that don't depend on a specific object's state.
   * 3. You can use Getters and Setters to manipulate properties in an organized manner.
   */
}

class Calculator {
  // Instance Method
  int add(int a, int b) {
    return a + b;
  }

  // Static Method
  static int multiply(int a, int b) {
    return a * b;
  }
}

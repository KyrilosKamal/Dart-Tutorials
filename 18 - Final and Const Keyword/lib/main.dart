void main() {
  /**
   * The difference between final and const in Dart:
   * final: A variable that is initialized only once and can be set at runtime. It can be used for instance variables, local variables, and top-level variables. The value of a final variable can be determined at runtime, but it cannot be changed after it has been set.
   * const: A variable that is a compile-time constant. It is used for variables that are known at compile time and cannot be changed. The value of a const variable must be known at compile time, and it can be used for instance variables, local variables, and top-level variables.
   * In Dart, when you use final or const, it means that the value cannot be changed after it is set. 
   * However, there is a big difference between them in terms of initialization time.
   * final variables are initialized at runtime, while const variables are initialized at compile time.
   */

  // Final:
  /**
   * Meaning: The value is set only once, but it can be set at runtime.\
   * It's useful when the value isn't known until runtime.
   * This type is stored in memory at runtime.
  */
  //Example:
  final currentTime = DateTime.now();
  print(currentTime); // prints the current time

  //const currentTime = DateTime.now(); // Error: The value of 'currentTime' can't be set because it's final.

  //const:
  /**
   * Meaning: The value is constant and known from compile time.
   * You must assign it a constant value when writing the code.
   * This type is stored in memory as a constant object and can be shared between program components.
   */

  //Example:
  const pi = 3.14;
  print(pi); // prints 3.14

  const name = "Kyrillos";
  print(name); // prints "Kyrillos"

  /**
   * Important Note:
Keyword    | Type     | Initialization Time | Mutability | Example
-----------|----------|---------------------|------------|----------------
final      | Variable | Runtime             | Immutable  | final x = 10;
-----------|----------|---------------------|------------|----------------
const      | Variable | Compile-time        | Immutable  | const y = 20;
 */

  //Bonus:
  //You can create constant objects like this:
  const point1 = Point(1, 2); // point1 is a compile-time constant
  const point2 = Point(1, 2); // point2 is a compile-time constant

  print(identical(point1, point2)); // prints true
  // The identical function checks if point1 and point2 are the same object in memory.
}

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y); // Constructor is marked as const
}
// The constructor is marked as const, which means that the object created from this class is a compile-time constant.
// This means that the object can be used in const expressions and can be shared between program components.
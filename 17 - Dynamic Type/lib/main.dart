void main() {
  /**
   * What is a dynamic variable?
   * When using dynamic, type checking is disabled at compile time, meaning that Dart will not validate operations performed on this variable until runtime.
   * This can lead to runtime errors if the variable is not used correctly.
   * Dynamic variables can hold any type of value, including null, and can be reassigned to different types at any time.
   * This can be useful in certain situations, such as when working with APIs or when the type of a variable is not known until runtime.
   * However, it is generally recommended to use specific types whenever possible to take advantage of Dart's strong typing system and catch errors at compile time.
   */

  //Example of dynamic variable
  dynamic variable = 10; // Its type is int
  print(variable.runtimeType); // int

  variable = "Hello"; // Now its type is String
  print(variable.runtimeType); // String

  variable = true; // Now its type is bool
  print(variable.runtimeType); // bool

  /**
   * Important Notes
Using dynamic makes you lose the benefit of type checking at compile time, which can lead to runtime errors if the variable is used in ways incompatible with its current type.

It's best to use dynamic only in situations where the variable type can't be determined in advance, such as dealing with JSON data or API responses of unknown structure.
  */

  /**
  * 
  | Keyword  | Type Change Allowed     | Value Change Allowed | Type Check at Compile Time |
  |----------|--------------------------|------------------------|-----------------------------|
  | dynamic  | ✅ Yes                   | ✅ Yes                | ❌ No                        |
  | var      | ❌ No (after initialization) | ✅ Yes            | ✅ Yes                       |


  * Note: 
  * If a variable is declared using var without initialization, it is automatically considered to be of type dynamic.
  */

  /** Difference between var and dynamic in Dart
   * var – Compile-Time Type Assignment
   * var is a keyword used to declare a variable without explicitly specifying its type.
   * When a variable is initialized with a value, Dart infers the variable's type based on the assigned value.
   * After initialization, the variable's type cannot be changed.
  */

  //Example
  var number = 10; // Dart concludes that the type is int
  print(number.runtimeType); // int

  number = 20; // Allowed: Same type
  // number = "text"; // Disallowed: Cannot change the type from int to String

  /**
 * Dynamic – Specifying the type at runtime
 * Dynamic is a type used to declare a variable that can change its type at runtime.
 * It is used when the type of data the variable will contain is not known in advance.
 */
  //Example
  dynamic variable1 = 10; // Current type: int
  print(variable1.runtimeType); // int

  variable1 = "Text"; // Current type: String
  print(variable1.runtimeType); // String

  variable1 = true; // Current type: bool
  print(variable1.runtimeType); // bool

  //Warning: Using dynamic loses the benefit of type checking at compile time, which can lead to runtime errors if the variable is used in ways incompatible with its current type.

  /*
| Attribute      | Var                                 | Dynamic                                 |
|----------------|--------------------------------------|------------------------------------------|
| Specify type   | Compile-Time                         | During runtime                           |
| Change type    | Not allowed after initialization     | Allowed at any time                      |
| Verify Type    | Done during compile-time             | Done during runtime                      |
| Performance    | Better due to early type checking    | Less efficient due to runtime validation |
*/

  /**
 * 📝 When do you use each?
 * Use var when you know the data type you'll be working with and want to benefit from compile-time type checking.
 * Use dynamic when the data type isn't known in advance, such as when working with JSON data or API responses of unknown structure.
 */
}

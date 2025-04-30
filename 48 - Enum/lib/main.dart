void main(){
  /**
   * In Dart, Enums are used to define a fixed set of clearly named values, making them easier to work with than numbers or strings.
   * Simple definition: They are declared using the enum keyword, and comma-separated values ​​are enclosed within square brackets.
   * Automatic values ​​and functions: Every value in an enum inherits from the standard Enum class, and the index (the value's index) and name (the value's name as a string) properties are automatically generated for it.
   * Enhanced Enums: Since Dart 2.17, you can add fields, constructors, and functions within an enum as if it were a bounded-value class.
   */


  // Example of a simple enum
Color color = Color.red; // Assigning the enum value Color.red to the variable color
  print(color); // Output: Color.red
  print(color.index); // Output: 0 (index of the enum value)

  print(color.name); // Output: red (name of the enum value)
  print(color.toString()); // Output: Color.red (string representation of the enum value)
  print(color.runtimeType); // Output: Color (type of the enum value)
  print(color.hashCode); // Output: 0 (hash code of the enum value)
  print(color == Color.red); // Output: true (comparison with another enum value)
  print(color == Color.green); // Output: false (comparison with another enum value)
  print(color.toString().split('.').last); // Output: red (name of the enum value without the enum type)

}


enum Color {
  red,
  green,
  blue,
}
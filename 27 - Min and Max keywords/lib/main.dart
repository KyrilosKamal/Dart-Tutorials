import 'dart:math';

void main() {
  /**
   * What are max and min in Dart?
   * These are functions in the dart:math library, and are used to compare two numbers:
   * max(a, b) 👉 Returns the largest number between a and b
   * min(a, b) 👉 Returns the smallest number between a and b
   * You need to import 'dart:math';
   */

  int a = 10;
  int b = 20;

  print("The minimum value is: ${min(a, b)}");
  print("The maximum value is: ${max(a, b)}");

  /*
==================================
📚 Summary of the max and min functions in Dart
=================================

| Function | Description | Example |
|------------|-----------------------------------------|------------------------------------------|
| max(a, b) | Returns the largest number between a and b | max(5, 8) ➜ 8 |
| min(a, b) | Returns the smallest number between a and b | min(5, 8) ➜ 5 |

📦 Required:
import 'dart:math';

===============================
*/
}

void main() {
  /**
 * What are logical operators in Dart?
 * Logical operators are used to connect Boolean expressions to make decisions based on multiple conditions. 
 * These operators return true or false depending on the logic applied.
 * */
  /*
 * Types of Logical Operators in Dart
 * In Dart, there are three main logical operators:
 * AND (&&) operator:
 * Returns true only if both expressions are true.
 * 
 * true && true => true
 * true && false => false
 * false && true => false
 * false && false => false
 */

  bool result = (5 > 3) && (10 > 7); // true && true => true
  print(result);

  /**
   * OR operator (||):
   * Returns true if one or both expressions are true.
   * true || true => true
   * true || false => true
   * false || true => true
   * false || false => false
   */
  bool result2 = (5 > 3) || (10 < 7); // true || false => true
  print(result2);

  /**
   * The NOT (!) operator:
   * Inverts the value of a logical expression; it converts true to false and vice versa.
   * !true =>false
   * !false => true
   */
  bool result3 = !(5 > 3); // !true => false
  print(result3);
}

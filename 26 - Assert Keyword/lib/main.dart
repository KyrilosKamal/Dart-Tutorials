void main() {
  /**
   * What is assert?
   * The word assert means "make sure this condition is true. If it's not true, return an error and cause the program to stop." However, this only happens during development.
   * 
   * Its benefits:It allows you to ensure that the values ​​entered into your code are logical.
   * It detects errors early while you're coding, rather than them appearing at runtime.
   * 
   * General form:
   * assert(condition, "message");
   * * The condition is the expression you want to check. If it's true, the program continues. If it's false, the program stops and shows the message.
   * * The message is optional. It's the error message that will be shown if the condition is false.
   * * Example:
   */

  assert(1 == 1, "This will not be shown because the condition is true.");

  // assert(1 == 2,"This will be shown because the condition is false.",); // This will cause an error and stop the program.
  // The assert statement checks if the condition is true. If it's not, it throws an AssertionError with the provided message.
  // The program will stop running, and you'll see the error message in the console.
  print("==========================================================");
  //مثال بسيط
  int age = 20;
  assert(age >= 18, "Age must be greater than or equal to 18");

  print("The program is working fine 👌");

  /**
   * Common Uses:
   * 1. Checking Variables:
   */
  String? name = "Sami";
  assert(name != null, "Name cannot be null");
  // This checks if the name variable is not null. If it is, the program will stop and show the message.
  // This is useful to ensure that you have a valid value before using it in your code.
  print("Name is valid: $name");

  //2. Check data in constructor:
  /**
   * class User {
   *      final String name;
   *      final int age;
   *      User(this.name, this.age) {
   *          assert(name.isNotEmpty);
   *          assert(age > 0);
   *    }
   * }
   */

  /**
 * Important Note:
 * The assert command does not work in release mode.
 * It is only used for debugging and development.
 * This means that the average user will not see these messages.
 */

  /**
 * Quick summary
 */
  /*
| Element        | Value
|----------------|----------------------------------------|
| Purpose        | Checking conditions during development |
| Appears in?    | debug mode only                        |
| Helps in?      | Detecting errors early                 |
|Form            |assert(condition, "error message");     |


*/
}

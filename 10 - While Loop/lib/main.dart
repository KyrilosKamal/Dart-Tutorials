void main() {
  /**
   * What is a while loop in Dart?
   * A while loop is a control expression used to execute a block of code repeatedly as long as a certain condition evaluates to true.
   * 
   * 
   * General formula:
   * while (condition) {
   *    // The code that will be executed while the condition is true
   * }
   * 
   * condition: An expression that evaluates to true or false. If true, the code inside the loop is executed; if false, the loop terminates.
   */

  //Example 1: Printing numbers from 1 to 5:
  int i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }

  /**
   * Explanation:
   * The value of the variable i starts with 1.
   * The loop continues as long as i is less than or equal to 5.
   * Each iteration prints the value of i, then increments it by 1.
   * 
   * Result:
   * 1
   * 2
   * 3
   * 4
   * 
   * */

  //Example 2: Printing even numbers from 0 to 10:
  int number = 1;
  while (number <= 10) {
    if (number % 2 == 0) {
      print(number);
    }
    number++;
  }

  /**
   * Explanation:
   * The value of the variable number starts with 0.
   * The loop continues as long as number is less than or equal to 10.
   * In each iteration, if the value of number is even (i.e., the remainder of dividing by 2 is 0), its value is printed.
   * 
   * Resule:
   * 0
   * 2
   * 4
   * 6
   * 8
   * 10
   */

  /**
 * ⚠️ Important Notes:
 * Infinite Loops: If the variables used in the condition are not updated within the loop body, it may result in an infinite loop.
 * 
 * void main() {
 * int i = 1;
 * while (i <= 5) {
 * print(i); // No update for i here, resulting in an infinite loop
 * }
}
 * Using break and continue:
 * break: Used to exit the loop immediately.
 * continue: Used to skip the current iteration and move to the next iteration.
 */
}

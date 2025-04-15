void main() {
  /**
   * What is a do-while loop in Dart?
   * A do-while loop is a type of loop that ensures the code inside it is executed at least once, even if the condition is initially untrue.
   * 
   * General formula:
   * do {
   *    //Code to be executed
   * } while (condition);
   * 
   * Condition: An expression that evaluates to true or false. If true, the loop continues; if false, the loop terminates.
   */

  //Example 1:Print numbers from 1 to 5:

  int number = 1;
  do {
    print(number);
    number++;
  } while (number <= 5);

  /**
 * Explanation:
 * The value of the variable i starts with 1.
 * The code is executed inside the loop, where the value of i is printed and then incremented by 1.
 * The loop continues as long as i is less than or equal to 5.
 * 
 * Results:
 * 1
 * 2
 * 3
 * 4
 * 5
 */
  print("==========================================================");
  //Example 2:Printing odd numbers from 1 to 9:
  int odd = 1;
  do {
    if (odd % 2 != 0) {
      print(odd);
    }
    odd++;
  } while (odd <= 9);
  /**
 * Explanation:
 * The value of the variable i starts with 1.
 * The code is executed inside the loop, checking to see if the value of i is odd (i.e., the remainder of dividing by 2 is not equal to 0), in which case it is printed.
 * The loop continues as long as i is less than or equal to 9.
 * 
 * Result:
 * 1
 * 3
 * 5
 * 7
 * 9
 */
  print("==========================================================");
  /**
 * ⚠️ Important Notes:
 * First Iteration: The code within the loop is executed at least once before the condition is checked.
 * Infinite Loops: If the variables used in the condition are not updated within the loop body, this may result in an infinite loop.
 */
}

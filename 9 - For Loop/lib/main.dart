void main() {
  /**
   * What is a for loop in Dart?
   * A for loop is used to execute a block of code a specified number of times, based on a specific condition.
   * 
   * 
   * General formula for a for loop
   * for (initialization; condition; increment/decrement) {
   *    // Code to be executed in each iteration
   * }
   * Initialization: Setting the starting value of the variable to be used in the loop. It is executed once before the iteration begins.
   * Condition: The expression evaluated before each iteration. If the result is true, the code inside the loop is executed; if false, the loop terminates.
   * Increment/Decrement: Modifying the value of a variable after each iteration (increment or decrement).
   */

  // Example 1: Printing numbers from 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  /**
   * Explanation:
   * Initialization: int i = 1 → Initializes the variable i with the value 1.
   * Condition: i <= 10 → The loop continues as long as i is less than or equal to 10.
   * Update: i++ → Increments the value of i by 1 after each iteration
   * 
   * Resule:
   * 1
   * 2
   * 3
   * 4
   * 5
   * 6
   * 7
   * 8
   * 9
   * 10
   */

  //==============================================================================================================================
  // Example 2: Printing numbers from 10 to 1
  for (int j = 10; j >= 1; j--) {
    print(j);
  }

  /**
   * Explanation:
   * Initialization: int i = 10 → Initializes the variable i with the value 10.
   * Condition: i >= 1 → The loop continues as long as i is greater than or equal to 1.
   * Update: i-- → Decrease the value of i by 1 after each iteration.
   * 
   * Resules:
   * 10
   * 9
   * 8
   * 7
   * 6
   * 5
   * 4
   * 3
   * 2
   * 1
   */

  //==============================================================================================================================

  // Example 3: Calculating the sum of numbers from 1 to 100:
  int sum = 0;
  for (int x = 1; x <= 100; x++) {
    sum += x;
  }

  print("The sum of the numbers from 1 too 100 is $sum");

  /**
 * Explanation:
 * Initialization: int i = 1 → Initializes the variable i with the value 1.
 * Condition: i <= 100 → The loop continues until the value of i reaches 100.
 * Update: i++ → Increments the value of i by 1 after each iteration.
 * Sum: The value of i is added to the variable sum each iteration.
 * 
 */

  //==============================================================================================================================
  /** Important Notes:
   * Nested Loops: For loops can be placed inside each other to perform more complex operations.
   * Avoid infinite loops: Make sure that the loop condition will be met at some point
   * otherwise, the loop will continue indefinitely, which may lead to system resource consumption.
  */

  for (int a = 1; a <= 3; a++) {
    for (int b = 1; b <= 3; b++) {
      print("a:$a, b:$b");
    }
  }
}

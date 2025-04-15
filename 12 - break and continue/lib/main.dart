void main() {
  /**
   * What is a break statement in Dart?
   * The break statement is used to immediately terminate a loop (such as for, while, or do-while) or a switch statement, and to move to the next line after the loop or switch statement.
   * 
   * 
   * Common Uses:
   * Inside loops: To stop iteration immediately when a certain condition is met.
   * Inside switch statements: To exit the statement after a certain condition is met.
   * 
   */

  //Example1: Using break inside a for loop
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break;
    }
    print(i); // Output: 1 2 3 4
  }

  //In this example, the loop will stop when i reaches 5, and numbers 5 and above will not be printed.
  print("=========================================");
  //Example2: Using break inside a while loop
  int j = 1;
  while (j <= 10) {
    if (j == 5) {
      break;
    }
    print(j); // Output: 1 2 3 4
    j++;
  }
  //In this example, the loop will stop when j reaches 5, and numbers 5 and above will not be printed.
  print("=========================================");

  //Example3: Using break inside a switch statement
  int day = 3;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    default:
      print("Invalid day");
  }
  // In this example, the code will be executed inside the case that matches the value of day, and then the switch statement will be exited using break.

  /**
   * ⚠️ Important Notes:
   * Inside nested loops: The break statement will only break the loop closest to it, not all nested loops.
   * Inside switch statements: It is essential to use break after each condition to avoid unintended subsequent 
   * conditions being executed.
   */
  print("=========================================");
  /**
   * What is a continue statement in Dart?
   * The continue statement is used to skip the current iteration of a loop (such as for, while, or do-while) and 
   * move to the next iteration.
   * 
   * Common Uses:
   * Inside loops: To skip certain iterations based on a condition.
   */
  //Example1: Using continue inside a for loop
  for (int l = 1; l <= 10; l++) {
    if (l == 6) {
      continue;
    }
    print(l); // Output: 1 2 3 4 5 7 8 9 10
  }
  //In this example, the loop will skip the iteration when l is 6, and 6 will not be printed.

  /**
   * ⚠️ Important Notes:
   * break: Terminates the loop or switch statement immediately upon execution.
   * continue: Skips the current iteration of the loop and starts the next iteration.
   * In nested loops, break and continue only affect the loop closest to them.
   */
}

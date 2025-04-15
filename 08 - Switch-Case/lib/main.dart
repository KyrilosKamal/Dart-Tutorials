void main() {
  /**
   * What is a switch-case statement in Dart?
   * A switch-case statement is used to execute different blocks of code based on the value of a particular variable. 
   * It's an elegant alternative to long if-else chains, especially when dealing with multiple values.
   * 
   * General formula:
   * 
   * switch (expression) {
   *    case value1:
   *       // Code executed if the value is equal to value1
   *      break;
   * case value2:
   *       // Code executed if the value is equal to value2
   *      break;
   *       // More cases can be added as needed
   * default:
   *       // Code executed if none of the previous cases match
   * }
   * 
   * expression: An expression whose result is evaluated to compare with the values ​​specified in each case.
   * case value: Represents a possible value for the expression. If it matches, the associated code is executed.
   * break: Used to exit a switch statement after the matching case is executed.
   * default: An optional case that is executed if none of the preceding cases match.
   */
  // Example 1: Determining the day based on a number

  int dayNumber = 3;
  String? dayName;
  switch (dayNumber) {
    case 1:
      dayName = "Sunday";
      break;
    case 2:
      dayName = "Monday";
      break;
    case 3:
      dayName = "Tuesday";
      break;
    case 4:
      dayName = "Wednesday";
      break;
    case 5:
      dayName = "Thursday";
      break;
    case 6:
      dayName = "Friday";
      break;
    case 7:
      dayName = "Saturday";
      break;
    default:
      print("Invalid Day Number");
  }

  print(dayName);

  //Example 2: Using switch with String
  String command = "Start";
  switch (command) {
    case 'Start':
      print("Program is Running");
      break;
    case 'Pause':
      print("Program is Paused");
      break;
    case 'Stop':
      print("Program is Stopped");
      break;
    default:
      print("Unknown Command");
  }

  /**
   * Important Notes:
   * The values ​​in each case must be unique and constant (such as numbers or strings).
   * It's always best to use a break after each case to prevent subsequent cases from being executed automatically.
   * Multiple cases can be grouped together to produce the same code without duplication.
   */
  // Example of Grouped multiple cases
  int value = 2;
  switch (value) {
    case 1:
    case 2:
    case 3:
      print("Value between 1 and 3");
      break;
    default:
      print("Other Value");
  }
}

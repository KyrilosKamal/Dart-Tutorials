void main() {
  /**
   * 🧠 What is an if-else statement in Dart?
   * An if-else statement is used to execute a specific code when a specific condition is met
   * and to execute another code when that condition is not met.
   * 
   * if (condition) { 
   *       // Code to be executed if the condition is true
   * } else {
   *      // Code to be executed if the condition is false
   * }
   * 
   * There're three statements of if-else statements
   * 1 - normal if-else
   * 2- if-else if
   * 3 - nested if-else
   */

  //1-  check if the number is Odd or Even with first statement
  int number = 7;
  if (number % 2 == 0) {
    print("$number is Even");
  } else {
    print('$number is Odd');
  }

  // 2 - Using if-else if to test multiple conditions:
  int score = 85;
  if (score >= 90) {
    print('Excellent');
  } else if (score >= 75) {
    print('Very Good');
  } else if (score >= 60) {
    print('Good');
  } else {
    print('Fail');
  }
  // 3 - nested if: You can place an if statement inside another one to check more complex conditions.
  int age = 16;
  bool hasID = false;

  if (age > 18) {
    // ignore: dead_code
    if (hasID) {
      print("Access Granted");
    } else {
      print("Please show your ID");
    }
  } else {
    print("Access is not permitted for those under 18 years of age.");
  }


  // another way to use if-else statement in shorthandway
  int x = 10;
  (x => 10) ? print ("output is equals to 10") : print ("output is not equals to 10");
}

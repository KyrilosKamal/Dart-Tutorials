void main() {
  /**
   * In Dart, try and catch blocks are used to handle exceptions that may occur during program execution. 
   * This structure allows you to handle errors in an organized manner, preventing unexpected program crashes. 
   * ==============================================================================================================
   * 
   * infrastructure:
   * try {
   *    // Code that might cause an exception
   * } catch (e) {
   *    // Exception handling
   * }
   * 
   * try: Contains code that might cause an exception.
   * catch: Executes if an exception occurs within the try block. You can access the exception via the e variable.
   */

  //A simple example
  try {
    int res = 10 ~/ 0; // This will cause a division by zero exception
    print("Result: $res"); // This line will not be executed
  } catch (e) {
    print("This is an error: $e"); //output: IntegerDivisionByZeroException
  }
  print("=========================================");
  // Using on to handle specific types of exceptions
  try {
    int resu = 10 ~/ 0; // This will cause a division by zero exception
    print("Result: $resu"); // This line will not be executed
  } on UnsupportedError {
    print(
      "This is an error: Division by zero is not allowed",
    ); //output: This is an error: Division by zero is not allowed
  } catch (e) {
    print("This is an error: $e"); // This line will not be executed
  }
  print("=========================================");
  //Get a Stack Trace
  try {
    int resul = 10 ~/ 0; // This will cause a division by zero exception
    print("Result: $resul"); // This line will not be executed
  } catch (e, s) {
    print("This is an error: $e"); //output: IntegerDivisionByZeroException
    print("Stack trace: $s"); //output: Stack trace: StackTrace
  }
  print("=========================================");
  // Use finally
  try {
    int result = 10 ~/ 0; // This will cause a division by zero exception
    print(result); // This line will not be executed
  } catch (e) {
    print(("This is an error: $e")); //output: IntegerDivisionByZeroException
  } finally {
    print(
      "This block always executes, regardless of an exception.",
    ); //output: This block always executes, regardless of an exception.
  }

  /**
 * Important notes
 * You can use on to specify a specific type of exception and handle it specifically.
 * If you don't specify the type of exception, catch will catch all exceptions.
 * You can use catch (e, s) to get the details of an exception and trace it.
 * Finally is used to execute code that should run whether an exception occurs or not.
 */

  /* -------------------------------------------------------------------------- */
  /*                      Dart Exception Handling Overview                      */
  /* -------------------------------------------------------------------------- */

  /*  
  | Construct | Purpose                                                                 |
  |-----------|-------------------------------------------------------------------------|
  | try       | Contains code that might throw an exception.                            |
  | catch     | Handles exceptions; can access the exception object and stack trace.    |
  | on        | Handles specific exception types; used when the exception type is known.|
  | finally   | Executes code regardless of whether an exception occurred or not.       |
  | throw     | Used to manually throw an exception.                                    |
  | rethrow   | Used to rethrow an exception caught in a catch block.                   |
  |-----------|-------------------------------------------------------------------------|
  | try-catch | Basic structure for exception handling.                                 |
  | try-catch-finally | Ensures cleanup code runs regardless of exceptions.         |
  | try-catch-on | Handles specific exceptions.                                      |
  | try-catch-rethrow | Re-throws an exception for further handling.                |
  |-----------|-------------------------------------------------------------------------|
  

  */
}

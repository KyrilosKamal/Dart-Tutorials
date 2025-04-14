void main() {
  //Quality and Retional operations only returns a True or False

  /**
   * In this Code we're asking the Compiler to tell us if a is equals to b and if both are equal, 
   * the compiler will tell us with true value, otherwise it will print false value. 
   */

  /* -------------------------------------------------------------------------- */
  /*                          First Example of Equality                         */
  /* -------------------------------------------------------------------------- */
  int a = 10;
  int b = 10;
  bool isBothValueAreEqual1 = a == b;
  print(isBothValueAreEqual1);

  int x = 10;
  int y = 1;
  bool isBothValueAreEqual2 = x == y;
  print(isBothValueAreEqual2);

  /* -------------------------------------------------------------------------- */
  /*                   Second Example of Greater or Less than                   */
  /* -------------------------------------------------------------------------- */
  /**
    * > Greater Than
    * < Less Than
    * >= Greater Than or Equal 
    * <= Less Than or Euqal
    * ! not 
    */

  int Num1 = 20;
  int Num2 = 15;
  bool isGreaterThan = Num1 > Num2;
  print(isGreaterThan);
}

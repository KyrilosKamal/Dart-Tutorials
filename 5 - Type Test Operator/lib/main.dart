// ignore_for_file: unnecessary_type_check

void main() {
  /**
   * In this Lession we're checking the Compiler for a value if it's for example an int or not
   */

  int a = 10;
  print(
    a is int,
  ); // the result will be always true, because we're declarin the variable with Int data Type

  int b = 20;
  print(b is! int); // since there's a '!' mark the resule would be false.

  /**there's another type of equality operations '??' */

  int? x;
  x ??= 30;
  print(x);
}

void main() {
  int a = 5;

  // The most important properties of numbers in Dart
  // are isEven, isOdd, isFinite, isInfinite, isNegative, and isNaN.
  // These properties are used to check the characteristics of numbers.
  // The properties are available for both int and double types.

  // The properties are as follows:
  //1- isEven
  //Returns true if the number is even (i.e., divisible by 2 without a remainder).
  print(a.isEven); // true

  //2- isOdd
  // Returns true if the number is odd (i.e., not divisible by 2 without a remainder).
  print(a.isOdd); // false

  //3- isNegative
  // Returns true if the number is negative (i.e., less than zero).
  // This property is only applicable to double values.
  print(a.isNegative); // false

  //4- isFinite
  // Returns true if the number is finite (i.e., not infinite or NaN).
  print(a.isFinite); // true

  //5- isInfinite
  // Returns true if the number is infinite (i.e., positive or negative infinity).
  // This property is only applicable to double values.
  print(a.isInfinite); // false

  //6- isNaN
  // Returns true if the number is NaN (not a number).
  // This property is only applicable to double values.
  // NaN is a special value that represents an undefined or unrepresentable value, such as the result of 0/0.
  print(a.isNaN); // false

  //7 -absolute
  // Returns the absolute value of the number.
  // The absolute value is the non-negative value of a number without regard to its sign.
  print(a.abs()); // 5

  //8 - ceil
  // Returns the smallest integer greater than or equal to the number.
  // This method is only applicable to double values.
  double b = 5.3;
  print(b.ceil()); // 6

  // 9 - compareTo
  // Compares the number with another number and returns:
  // -1 if the number is less than the other number,
  // 0 if the number is equal to the other number,
  // 1 if the number is greater than the other number.
  print(a.compareTo(5)); // 0
  print(a.compareTo(3)); // 1
  print(a.compareTo(7)); // -1

  //10 - floor
  // Returns the largest integer less than or equal to the number.
  // This method is only applicable to double values.
  print(b.floor()); // 5

  //11 - round
  // Returns the closest integer to the number.
  // If the number is halfway between two integers, it rounds to the nearest even integer.
  // This method is only applicable to double values.
  print(b.round()); // 5
  print(5.5.round()); // 6

  //12 - toInt()
  // Converts the number to an integer.
  // This method is only applicable to double values.
  print(b.toInt()); // 5
  print(5.5.toInt()); // 5
  print(5.9.toInt()); // 5
  print(5.3.toInt()); // 5
  print(5.7.toInt()); // 5
  print(5.1.toInt()); // 5
  print(5.4.toInt()); // 5

  int c = 10;
  print(c.toInt()); // 10

  //13- toDouble()
  // Converts the number to a double.
  // This method is only applicable to int values.
  print(a.toDouble()); // 5.0
  print(5.toDouble()); // 5.0
  print(5.0.toDouble()); // 5.0
  print(5.3.toDouble()); // 5.3
  print(5.7.toDouble()); // 5.7
  print(5.1.toDouble()); // 5.1

  //14- toString()
  // Converts the number to a string.
  // This method is applicable to both int and double values.
  print(a.toString()); // "5"
  print(b.toString()); // "5.3"
  print(5.0.toString()); // "5.0"
  print(5.3.toString()); // "5.3"
  print(5.7.toString()); // "5.7"
  print(5.1.toString()); // "5.1"
  print(5.4.toString()); // "5.4"
  print(5.9.toString()); // "5.9"
}

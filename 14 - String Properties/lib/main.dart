void main() {
  /*
  * String Properties
  The most important properties of text strings in Dart are:  
  */
  //1 - length: The number of characters in the string.
  String str = "Hello, Dart!";
  print(
    "Length of the string: ${str.length}",
  ); //Output: Length of the string: 12

  //2 - isEmpty: A boolean value that indicates whether the string is empty or not.
  String str1 = "";
  print(
    "Is the string empty? ${str1.isEmpty}",
  ); //Output: Is the string empty? true

  // 3 - Uppercase: A method that converts the string to uppercase.
  String str2 = "hello, dart!";
  print(
    "Uppercase string: ${str2.toUpperCase()}",
  ); //Output: Uppercase string: HELLO, DART!

  //4 - Lowercase: A method that converts the string to lowercase.
  String str3 = "HELLO, DART!";
  print(
    "Lowercase string: ${str3.toLowerCase()}",
  ); //Output: Lowercase string: hello, dart!

  //5 - Trim: A method that removes leading and trailing whitespace from the string.
  String str4 = "   Hello, Dart!   ";
  print(
    "Trimmed string: '${str4.trim()}'",
  ); //Output: Trimmed string: 'Hello, Dart!'

  // 6 - compareTo: A method that compares two strings lexicographically.
  String str7 = "Hello";
  String str8 = "World";
  int result = str7.compareTo(str8);
  if (result < 0) {
    print("$str7 is less than $str8"); //Output: Hello is less than World
  } else if (result > 0) {
    print("$str7 is greater than $str8");
  } else {
    print("$str7 is equal to $str8");
  }

  // 7 - replaceAll: A method that replaces all occurrences of a substring with another substring.
  String str9 = "Hello, Dart!";
  String replacedStr = str9.replaceAll("Dart", "Flutter");
  print(
    "Replaced string: $replacedStr",
  ); //Output: Replaced string: Hello, Flutter!
}

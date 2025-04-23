import 'dart:io';

void main() {
  /* -------------------------------------------------------------------------- */
  /*                                  startWith                                 */
  /* -------------------------------------------------------------------------- */

  /**
   * What does startWith do?
   * It checks if a string starts with a specific substring.
   * For example, if you have a list of names and you want to find names that start with 'A', you can use startWith to filter them out.
   * It is used to check if a string starts with a specific substring.
   * Main Formula:  string.startWith(pattern)
   */
  String name = "Mohamed Salah";

  print(name.startsWith("Moh")); // Output: true

  print(name.startsWith("Salah")); // Output: false

  /* -------------------------------------------------------------------------- */
  /*                                   endWith                                  */
  /* -------------------------------------------------------------------------- */

  /**
   * What does endWith do?
   * It checks if a string ends with a specific substring.
   * For example, if you have a list of file names and you want to find files that end with '.txt', you can use endWith to filter them out.
   * It is used to check if a string ends with a specific substring.
   * Main Formula:  string.endWith(pattern)
   */

  String fileName = "Report.pdf";
  print(fileName.endsWith(".pdf")); // Output: true
  print(fileName.endsWith(".docx")); // Output: false

  /* -------------------------------------------------------------------------- */
  /*                                  contains                                  */
  /* -------------------------------------------------------------------------- */

  /**
   * What does contains do?
   * contains() is a function used to check if a specific text or element is present inside a String or List.
   * Main Formula:  string.contains(pattern)
   */

  String str = "Dart is Awesome!";
  print(str.contains("awesome")); // Output: false
  print(str.contains("Awesome")); // Output: true

  /**
   *  🧠 Notes:
   * Returns true if the word or character exists.
   * Distinguishes between uppercase and lowercase letters (case-sensitive).
   */

  /* -------------------------------------------------------------------------- */
  /*                                   Summery                                  */
  /* -------------------------------------------------------------------------- */

  // Second: Using contains with Lists

  List<int> numbers = [1, 2, 3, 4];
  bool hasThree = numbers.contains(3);
  print(hasThree); // true

  //Example:
  var name2 = "Ahmed Mohamed";
  if (name2.contains("Mohamed")) {
    print("Yes, the name contains 'Mohamed"); //Yes, the name contains 'Mohamed
  }

  List<String> fruits = ["apple", "banana", "orange"];
  if (fruits.contains("banana")) {
    print("Yes, the list contains 'banana'"); // Yes, the list contains 'banana'
  }

  /* -------------------------------------------------------------------------- */
  /*                                   indexOf                                  */
  /* -------------------------------------------------------------------------- */
  /**
   * ✅ What is indexOf in Dart? 
   * indexOf() is a function used to get the first index of a specific element in a String or List.
   */
  //First: indexOf with Strings
  String text = "Hello Dart";
  int index = text.indexOf("Dart");
  print(index); // 6
  //It means that the word "Dart" starts with the letter number 6 (counting starts from 0).

  // If the element does not exist
  //Returns -1 if the element is not present.
  print("Hello".indexOf("World")); // -1

  /*-------------------------------------------------------------------------- */
  /*
  | Method        | Description                                              | Example                                            |
  |---------------|----------------------------------------------------------|----------------------------------------------------|
  | startsWith()  | Checks if the string starts with a specific part         | "Ahmed".startsWith("Ah") ➜ true                   |
  | endsWith()    | Checks if the string ends with a specific part           | "file.txt".endsWith(".txt") ➜ true                |
  | contains()    | Checks if a string contains a specific substring or char  | "flutter is cool".contains("cool") ➜ true         |
  | indexOf()     | Returns the first index where an element or substring is found              | "DartLang".indexOf("Lang") → 4                           |



🧠 Useful for:
- startsWith(): checking prefixes (e.g., file names, user inputs)
- endsWith(): checking suffixes (e.g., file extensions)
- contains(): searching for keywords or filtering content

   */
}

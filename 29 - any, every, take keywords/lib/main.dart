void main() {
  //any, every, take keywords

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();

  //take keyword
  List<int> oddNumbers = numbers.where((number) => number % 2 != 0).toList();
  print("Even Numbers: $evenNumbers"); // [2, 4, 6, 8, 10]
  print("Odd Numbers: $oddNumbers"); // [1, 3, 5, 7, 9]

  //any keyword
  bool hasEvenNumbers = numbers.any((number) => number % 2 == 0); // true
  bool hasOddNumbers = numbers.any((number) => number % 2 != 0); // true
  print("Has Even Numbers: $hasEvenNumbers"); // true
  print("Has Odd Numbers: $hasOddNumbers"); // true

  //every keyword
  bool allEvenNumbers = numbers.every((number) => number % 2 == 0); // false
  bool allOddNumbers = numbers.every((number) => number % 2 != 0); // false
  print("All Even Numbers: $allEvenNumbers"); // false
  print("All Odd Numbers: $allOddNumbers"); // false

  /*
===========================================
📚 Dart Function Summary: every, any, take
===========================================

| Function     | Description                                                                            | Short Example |
|--------------|----------------------------------------------------------------------------------------|---------------------------------------------|
| every()      | Returns true if all elements meet a certain condition                                  | list.every((e) => e > 0) |
| any()        | Returns true if there is at least one element that meets the condition                 | list.any((e) => e < 0) |
| take(n)      | Takes the first n elements and returns them as an Iterable | list.take(3) ➜ (a, b, c) |

🧠 Useful for: filtering, quick tests, and sampling lists.
===========================================
*/
}

void main() {
  /**
   * What are firstWhere, asMap, and whereType in Dart?
   * 
   * - firstWhere: Returns the first element that satisfies a given condition.
   * - asMap: Converts a list to a map, where the keys are the indices of the list.
   * - whereType: Filters elements of a collection based on their type.
   */

  List<int> numbers = [1, 2, 3, 4, 5];

  // Using firstWhere
  int firstEven = numbers.firstWhere((number) => number.isEven);
  print("First even number: $firstEven");

  // Using asMap
  Map<int, int> numberMap = numbers.asMap();
  print("Number map: $numberMap");

  // Using whereType
  List<dynamic> mixedList = [1, "two", 3.0, true];
  List<int> intList = mixedList.whereType<int>().toList();
  print("Filtered integers: $intList");

  /*
===========================================
📚 Summary of Dart functions: firstWhere, asMap, whereType
===========================================

| Function         | Description                                               | Short Example |
|------------------|-----------------------------------------------------------|---------------------------------------------|
| firstWhere()     | Returns the first element that meets a certain condition. | list.firstWhere((e) => e > 5)               |
|------------------|-----------------------------------------------------------|---------------------------------------------|
| asMap()          | Converts List to Map (index => value)                     | list.asMap() ➜ {0: x, 1: y}                |
|------------------|-----------------------------------------------------------|---------------------------------------------|
| whereType<T>()   | Selects items of a specific type.                         | list.whereType<String>() ➜ (a, b, c)        |
|------------------|-----------------------------------------------------------|---------------------------------------------|

✅ Useful for: filtering, converting, and smart search within lists.

*/
}

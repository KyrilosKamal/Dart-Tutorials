/*
| Function        | Description                                                                 | Example                                                  |
|-----------------|-----------------------------------------------------------------------------|----------------------------------------------------------|
| contains()      | Checks if a string or list contains a specific element or substring         | "Hello".contains("H") → true                             |
| startsWith()    | Checks if a string starts with a specific prefix                            | "Flutter".startsWith("Fl") → true                        |
| endsWith()      | Checks if a string ends with a specific suffix                              | "main.dart".endsWith(".dart") → true                     |
| indexOf()       | Returns the first index where an element or substring is found              | "DartLang".indexOf("Lang") → 4                           |
| where()         | Returns a new iterable with all elements matching a condition               | [1,2,3,4].where((x) => x > 2) → (3,4)                    |
| indexWhere()    | Returns the index of the first element matching a condition                 | [5,10,15].indexWhere((x) => x > 9) → 1                   |
| firstWhere()    | Returns the first element matching a condition                              | [3,6,9].firstWhere((x) => x % 3 == 0) → 3                |
| asMap()         | Converts a list to a map with indices as keys                               | ['a','b'].asMap() → {0: 'a', 1: 'b'}                     |
| whereType<T>()  | Filters elements of a specific type from a mixed list                       | [1,'a',2].whereType<int>() → (1, 2)                      |
| every()         | Returns true if all elements satisfy the condition                          | [2,4,6].every((x) => x % 2 == 0) → true                  |
| any()           | Returns true if at least one element satisfies the condition                | [1,2,3].any((x) => x > 2) → true                         |
| take()          | Returns the first n elements from a list                                    | [10,20,30,40].take(2) → (10, 20)                         |
| toList()        | Converts an Iterable to a List                                              | [1, 2, 3].where((x) => x > 1).toList() → [2, 3]          |
| toSet()         | Converts an Iterable or List to a Set (removes duplicates)                  | [1,2,2,3].toSet() → {1, 2, 3}                            |
| assert()        | Used for debugging, throws error if condition is false                      | assert(age > 0); // Throws error if age is 0 or less     |
*/

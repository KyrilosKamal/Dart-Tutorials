void main() {
  /**
   * What is a map in Dart?
   * A map is a collection of key-value pairs, where each key is unique and used to access its associated value.
   * Maps are similar to dictionaries in other programming languages.
   * They are unordered collections, meaning the order of the key-value pairs is not guaranteed.
   * Maps can be created using the Map constructor or by using the literal syntax {}.
   * Maps can contain any type of data as keys and values, including other maps, lists, and objects.
   * Maps are mutable, meaning you can add, remove, and modify key-value pairs after the map is created.
   * Maps are useful for storing and retrieving data based on unique keys, making them ideal for scenarios where you need to look up values quickly.
   * Maps are commonly used in Dart for JSON parsing, configuration settings, and data storage.
   * Maps can be iterated over using forEach, for-in loops, or by converting them to lists.
   * Maps can be nested, meaning you can have a map inside another map, allowing for complex data structures.
   * Maps can be converted to and from JSON using the jsonEncode and jsonDecode functions from the dart:convert library.
  */
  //How to create a map
  Map student = {'name': 'Ali', 'age': 23};
  print(student); // {name: Ali, age: 23}

  //How to create a map with different data types
  var student2 = {'name': 'Ali', 'age': 23, 'isStudent': true};
  print(student2); // {name: Ali, age: 23, isStudent: true}

  //How to create a map with different data types using Map constructor
  Map student3 = Map();
  student3['name'] = 'Ali';
  student3['age'] = 23;
  student3['isStudent'] = true;
  print(student3); // {name: Ali, age: 23, isStudent: true}

  //Access to values
  print((student3['name'])); // Ali
  print((student3['age'])); // 23
  print((student3['isStudent'])); // true

  //The most important properties and functions of Map
  Map student4 = {'name': 'Ali', 'age': 23, 'isStudent': true};

  //1 - length: Returns the number of key-value pairs in the map.
  print(student4.length); // 3

  // 2 - isEmpty: Returns true if the map is empty, false otherwise.
  print(student4.isEmpty); // false

  //3 - isNotEmpty: Returns true if the map is not empty, false otherwise.
  print(student4.isNotEmpty); // true

  //4 - keys: Returns an iterable of the keys in the map.
  print(student4.keys); // (name, age, isStudent)

  //5 - values: Returns an iterable of the values in the map.
  print(student4.values); // (Ali, 23, true)

  //6 - containsKey: Returns true if the map contains the specified key, false otherwise.
  print(student4.containsKey('name')); // true

  //7- containsValue: Returns true if the map contains the specified value, false otherwise.
  print(student4.containsValue('Ali')); // true

  //8 - remove(key): Removes the key-value pair with the specified key from the map and returns the value.
  print(student4.remove('name')); // Ali
  print(student4); // {age: 23, isStudent: true}

  //9 - clear(): Removes all key-value pairs from the map.
  student4.clear();

  //Loops in Map
  student4.forEach((key, value) {
    print('$key: $value');
  }); // age: 23, isStudent: true

  //Example:
  Map studentData = {'name': 'Ali', 'age': 23};
  studentData['Grade'] = 'A';
  print(studentData); // {name: Ali, age: 23, Grade: A}
}

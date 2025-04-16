void main() {
  /**
   * What is a list in Dart?
   * A list is an ordered collection of elements, which can contain duplicate elements, and is used to store data that can be accessed by index.
   * Lists are mutable, meaning you can change their contents after they are created.
   * Lists can contain elements of different types, but it is recommended to use a single type for better performance and readability.
   * Lists can be created using the List class or using the literal syntax [].
   * Lists can be empty or contain elements, and can be created with a fixed length or a growable length.
   * Lists can be nested, meaning you can have a list of lists.
   * Lists can be iterated over using for loops, forEach, and other collection methods. 
   * Lists can be sorted, filtered, and transformed using various methods provided by the List class.
   * Lists can be converted to other types of collections, such as sets and maps.
   * Lists can be used to store data in a structured way, making it easier to manage and manipulate.
   * Lists are a fundamental data structure in Dart and are widely used in Flutter development for managing collections of data.
   * Lists are a powerful and flexible way to store and manipulate data in Dart.
   * Lists are a key part of the Dart programming language and are used extensively in Flutter development.
   * Lists are a versatile and essential data structure in Dart, providing a way to store and manipulate collections of data efficiently.
   */

  //List types in Dart:
  //1. Fixed-length List: A list with a fixed number of elements that cannot be changed after creation.
  var fixedList = List.filled(
    3,
    0,
  ); // Creates a fixed-length list with 3 elements initialized to 0
  fixedList[0] = 1;
  fixedList[1] = 2;
  fixedList[2] = 3;
  //fixedList[3] = 4; // This will throw an error because the list has a fixed length of 3

  //2. Growable List: A list that can grow or shrink in size as elements are added or removed.
  var growList = [1, 2, 3]; // Creates a growable list with 3 elements
  growList.add(4); // Adds an element to the end of the list

  /**
 * List properties:
 * 1. length: Returns the number of elements in the list.
 * 2. isEmpty: Returns true if the list is empty, false otherwise.
 * 3. isNotEmpty: Returns true if the list is not empty, false otherwise.
 * 4. first: Returns the first element of the list.
 * 5. last: Returns the last element of the list.
 */
  // 1 - Example length:
  print(fixedList.length); // Output: 3
  print(growList.length); // Output: 4

  // 2 - Example isEmpty:
  print(fixedList.isEmpty); // Output: false
  print(growList.isEmpty); // Output: false

  // 3 - Example isNotEmpty:
  print(fixedList.isNotEmpty); // Output: true
  print(growList.isNotEmpty); // Output: true

  // 4 - Example first:
  print(fixedList.first); // Output: 1
  print(growList.first); // Output: 1

  // 5 - Example last:
  print(fixedList.last); // Output: 3
  print(growList.last); // Output: 4

  // General Formulas for creating lists in Dart:
  List fruits = ['Apple', 'Banana', 'Cherry'];
  fruits.add('Date');
  fruits.add('Elderberry');
  fruits.add('Fig');
  fruits.remove('Banana');
  print(fruits); // ['Apple', 'Cherry', 'Date']

  //Iterating over lists
  //Lists can be iterated over using loops:
  for (var fruit in fruits) {
    print(fruit); // Output: Apple, Cherry, Date
  }
  //another type of iteration
  for (int x = 0; x < fruits.length; x++) {
    print(fruits[x]); // Output: Apple, Cherry, Date
  }
  //Using forEach method
  fruits.forEach((fruit) {
    print(fruit); // Output: Apple, Cherry, Date
  });

  //The most important functions used with lists
  //1. add: Adds an element to the end of the list.
  growList.add(5); // Adds 5 to the end of the list
  print(growList); // Output: [1, 2, 3, 4, 5]

  //2. addAll: Adds all elements of another list to the end of the list.
  var anotherList = [6, 7, 8]; // Another list to add
  growList.addAll(anotherList); // Adds all elements of anotherList to growList
  print(growList); // Output: [1, 2, 3, 4, 5, 6, 7, 8]

  //3. insert: Inserts an element at a specific index in the list.
  growList.insert(2, 6); // Inserts 6 at index 2
  print(growList); // Output: [1, 2, 6, 3, 4, 5]

  //insertAll: Inserts all elements of another list at a specific index in the list.
  var anotherList2 = [7, 8]; // Another list to insert
  anotherList2.insertAll(
    2,
    anotherList,
  ); // Inserts all elements of anotherList at index 2
  print(growList); // Output: [1, 2, 7, 8, 6, 3, 4, 5]

  //4. remove: Removes the first occurrence of an element from the list.
  growList.remove(6); // Removes the first occurrence of 6 from the list
  print(growList); // Output: [1, 2, 3, 4, 5]

  //5. removeAt: Removes an element at a specific index from the list.
  growList.removeAt(2); // Removes the element at index 2 from the list
  print(growList); // Output: [1, 2, 4, 5]

  //6. removeRange: Removes a range of elements from the list.
  growList.removeRange(1, 3); // Removes elements from index 1 to 3 (exclusive)
  print(growList); // Output: [1, 5]

  //6. clear: Removes all elements from the list.
  growList.clear(); // Removes all elements from the list
  print(growList); // Output: []

  //7. contains: Checks if the list contains a specific element.
  growList = [1, 2, 3, 4, 5]; // Reinitialize the list
  print(growList.contains(3)); // Output: true
  print(growList.contains(6)); // Output: false

  //8. indexOf: Returns the index of the first occurrence of an element in the list.
  print(growList.indexOf(3)); // Output: 2
  print(growList.indexOf(6)); // Output: -1 (not found)

  //9 - sort:Sorts the elements in the list.
  growList.sort(); // Sorts the list in ascending order
  print(growList); // Output: [1, 2, 3, 4, 5]

  //10 - reverse: Reverses the order of the elements in the list.
  growList = [1, 2, 3, 4, 5]; // Reinitialize the list
  growList = growList.reversed.toList(); // Reverses the list
  print(growList); // Output: [5, 4, 3, 2, 1]

  //11 - replaceRange: Replaces a range of elements in the list with another list.
  var newList = [6, 7, 8]; // New list to replace the range
  growList.replaceRange(
    1,
    3,
    newList,
  ); // Replaces elements at index 1 to 3 with newList
  print(growList); // Output: [5, 6, 7, 8, 1]
}

void main() {
  /**
   * What is a Set?
   * In Dart, a Set is an unordered collection of unique elements.
   * This means:
   *  The elements are not repeated.
   *  The order is not important.
   */

  // Set properties
  /*
    Property                      Description
    --------------------------------------------------
    unordered                   The order of elements is not guaranteed.
    unique                      No duplicate elements are allowed.
    performance                 Fast lookups and insertions.
  */

  // Creating a Set
  Set mySet = {1, 2, 3, 4, 5};
  print(mySet); // {1, 2, 3, 4, 5}

  // Creatubg a set with a Class
  Set mySet2 = Set();
  mySet2.add("Ali");
  mySet2.add("Reza");
  mySet2.add("Kyrillos");
  mySet2.add(
    "Ali",
  ); // This will not be added to the set because it is a duplicate
  print(mySet2); // {Ali, Reza, Kyrillos}

  // The most important operations on the Set:
  // 1. add() - Adds an element to the set.
  mySet.add(6);
  print(mySet); // {1, 2, 3, 4, 5, 6}
  // 2. remove() - Removes an element from the set.
  mySet.remove(6);
  print(mySet); // {1, 2, 3, 4, 5}
  // 3. contains() - Checks if an element is in the set.
  print(mySet.contains(3)); // true
  print(mySet.contains(6)); // false
  // 4. length - Returns the number of elements in the set.
  print(mySet.length); // 5
  // 5. clear() - Removes all elements from the set.
  mySet.clear();
  print(mySet); // {}
  // 6. isEmpty - Checks if the set is empty.
  print(mySet.isEmpty); // true
  // 7. isNotEmpty - Checks if the set is not empty.
  print(mySet.isNotEmpty); // false
  // 8. union() - Returns a new set that is the union of two sets.
  Set set1 = {1, 2, 3};
  Set set2 = {3, 4, 5};
  Set unionSet = set1.union(set2);
  print(unionSet); // {1, 2, 3, 4, 5}
  // 9.toList() - Converts the set to a list.
  List myList = mySet2.toList();
  print(myList); // [Ali, Reza, Kyrillos]

  /**
   * When Use a Set?
   * 1. When you need to store unique elements.
   * 2. When you need to perform fast lookups and insertions.
   * 3. When the order of elements is not important.
   * 4. When you care about unique elements.
   * 5. When you need to perform set operations like union, intersection, and difference.
   */
}

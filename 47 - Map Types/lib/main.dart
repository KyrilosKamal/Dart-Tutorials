import 'dart:collection';

void main(){
  /**
   * In Dart, there are three main types of maps that differ in how elements are stored and organized during iteration:
   * 1. HashMap: A map based on a hashtable that offers fast performance (average complexity of O(1) for searches, insertions, and deletions), but does not guarantee any order during iteration.
   * 2. LinkedHashMap: A map based on a hashtable with a linked list to maintain insertion order; that is, iterates elements in the order they were added.
   * 3. SplayTreeMap: A map based on a balanced binary tree (splay tree), where keys are automatically sorted based on an allocable comparison, but at the cost of O(log n) complexity for the underlying operations.
   */

  /**
   * HashMap
   * Type: Unordered Hash Table
   * Performance: O(1) search/insert/delete
   * Usage: Store values ​​quickly without the need for sorting
   */

  // Example of HashMap
  print("HashMap Example");

  HashMap hashMap = new HashMap();
  hashMap[101] = "Alice";
  hashMap[42] = "bob";
  hashMap[23] = "Charlie";

  print(hashMap); // {101: Alice, 42: bob, 23: Charlie}


/**
 * LinkedHashMap
 * Type: Hash table with insertion order
 * Performance: O(1) search/insert/delete
 * Use: When insertion order is needed
 */
//Example of LinkedHashMap

print("==========================");
print("LinkedHashMap Example");
LinkedHashMap linkedHashMap = new LinkedHashMap();

linkedHashMap['first'] = 1;
linkedHashMap['second'] = 2;
linkedHashMap['third'] = 3;
print(linkedHashMap); // {first: 1, second: 2, third: 3}
// Outputs maintain order:
// {first: 1, second: 2, third: 3}

// You can also access keys and entries in insertion order:
print(linkedHashMap.keys); // (first, second, third)
print(linkedHashMap.entries); // (MapEntry(first: 1), MapEntry(second: 2), MapEntry(third: 3))


print("==========================");
print("splayTreeMap Example");

/**
 * SplayTreeMap
 * Type: Self-balancing binary tree
 * Performance: O(log n) search/insert/delete
 * Use: When keys are needed in ascending or descending order
 */

// Example of splayTreeMap
SplayTreeMap splayTreeMap = new SplayTreeMap();
splayTreeMap[3] = "three";
splayTreeMap[1] = "one";
splayTreeMap[2] = "two";

print(splayTreeMap); // {1: one, 2: two, 3: three}
// Outputs in ascending order

// You can experiment by adding or removing keys to see the automatic rebalancing:
splayTreeMap[15] = 'fifteen';
print(splayTreeMap); // {1: one, 2: two, 3: three, 15: fifteen}
splayTreeMap[5] = 'five';
print(splayTreeMap); // {1: one, 2: two, 3: three, 5: five, 15: fifteen}


/**
 * General Notes
 * Don't forget to import the dart:collection library to use these specialized maps.
 * HashMap for maximum performance without order commitment.
 * LinkedHashMap for insertion order preservation.
 * SplayTreeMap for key-ordered maps.
 */

/* -------------------------------------------------------------------------- */
/*                                   Summery                                  */
/* -------------------------------------------------------------------------- */
/*
| Type            | Storage Mechanism                             | Iteration Order             | Time Complexity      |
|-----------------|------------------------------------------------|-----------------------------|----------------------|
| HashMap         | Unordered hash table                           | Not guaranteed              | O(1) average         |
| LinkedHashMap   | Hash table with linked list for insertion order| In insertion order          | O(1) average         |
| SplayTreeMap    | Self-balancing binary search tree              | Sorted by key comparison    | O(log n)             |
*/

}
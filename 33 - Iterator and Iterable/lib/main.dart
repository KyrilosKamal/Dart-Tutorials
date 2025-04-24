void main() {
  /**
   * What is an Iterable?
   * It is a collection (data set) whose elements can be navigated through (such as a List or Set).
   * Anything that can be looped with a for-in or forEach loop is an Iterable.
   */

  Iterable<int> numbers = [1, 2, 3, 4, 5]; // List is an Iterable
  Iterable<String> names = {'John', 'Jane', 'Doe'}; // Set is an Iterable

  Iterable<int> iter = numbers;
  print(iter); // (1, 2, 3, 4, 5)
  print(names); // (John, Jane, Doe)
  /**
   * What is an Iterator?
   * It is an object used to "track" the current element while navigating within an Iterable.
   * Every Iterable can generate an Iterator using the iterator function.
   */

  /**
   * Iterator functions:
   * moveNext() → Moves to the next location and returns true if there is another element.
   * current → Returns the current element after moving to it with moveNext().
   */

  // Practical Example explaine the difference between Iterable and Iterator:

  // Iterable = a collection of elements
  List<String> fruits = ['Apple', 'Banana', 'Mango'];

  // Iterable = the collection itself
  Iterable<String> iterable = fruits;

  // Iterator = a tool for navigating through the Iterable elements
  Iterator<String> iterator = iterable.iterator;

  while (iterator.moveNext()) {
    print(iterator.current); // Apple, Banana, Mango
  }

  /**
   * Why do we need an Iterator?
   * Sometimes when you want to control navigation manually rather than using for or forEach.
   * It's very useful for building libraries or working with custom Streams or Data Structures.
   */

  /* -------------------------------------------------------------------------- */
  /*                                   Summery                                  */
  /* -------------------------------------------------------------------------- */

  /*
    ---------------------------------------------------------
  ✅ Iterable & Iterator Summary in Dart
  ---------------------------------------------------------

  | Term        | Description                                                      |
  |-------------|------------------------------------------------------------------|
  | Iterable    | A collection of elements that can be traversed one by one.       |
  | Iterator    | An object used to move through an Iterable item by item.         |
  | moveNext()  | Moves the iterator to the next element.                          |
  |             | Returns true if there is a next element, false otherwise.        |
  | current     | Returns the current element after calling moveNext().            |
  
   */
}

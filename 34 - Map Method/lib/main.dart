void main() {
  /**
 * 🧠 What is map()?
 * map() is a function that applies a transformation function to each element in a collection and returns a new collection containing the results.
 * =================================================================================
 * General formula:
 * Iterable<E> map<E>(E Function(T element) toElement)
 * T: The type of the original element in the set.
 * E: The type of the new element after the transformation.
 * toElement: A function that specifies how each element should be transformed.
 * =================================================================================
 * 
 */

  //✅ Practical example:
  List<int> numbers = [1, 2, 3, 4];
  var squares = numbers.map((num) => num * num);
  print(squares); // (1, 4, 9, 16)

  //Note that map() returns an Iterable, so if you need a List, you can use .toList() to convert the result.

  var squaresList = numbers.map((num) => num * num).toList();
  print(squaresList); // [1, 4, 9, 16]

  /**
   * When do you use map()?
   * When you need to transform each element in a collection into a new shape.
   * When you want to create a new collection containing the results of the transformation.
   * =================================================================================
   * Notes:
   * map() does not change the original collection; it returns a new collection.
   * If you want to perform an operation without creating a new collection, consider using forEach() instead of map().
  */

  /**
   * Is map() a type of loop?
   * Yes, in Dart, the map() function is considered a type of loop because it's used to iterate over elements in an Iterable and apply a conversion function to each element. 
   * However, map() differs from traditional loops like for or while in some ways.
   */

  /*
   The difference between map() and traditional loops
     | Feature             | map() Method                                           | Traditional Loops (for, for-in, while)             |
  |---------------------|--------------------------------------------------------|-----------------------------------------------------|
  | **Purpose**         | Transforms each element and returns a new Iterable     | Executes specified instructions for each element    |
  | **Return Value**    | Returns a new Iterable with transformed elements       | Does not return a value unless explicitly specified |
  | **Common Use Case** | Creating a new collection by transforming elements     | Performing side effects or complex logic            |
  | **Early Exit**      | Cannot break early; processes all elements             | Can use `break` or `continue` to control flow       |
  | **Asynchronous Ops**| Not suitable for async operations within the function  | Supports `await` within async functions             |
  | **Original Data**   | Does not modify the original collection                | Can modify the original collection                  |
  | **Performance**     | May be more concise and readable for simple transforms | Offers more control for complex operations          |
   */
}

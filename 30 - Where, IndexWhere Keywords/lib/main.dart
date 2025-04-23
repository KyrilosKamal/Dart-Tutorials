void main() {
  /* -------------------------------------------------------------------------- */
  /*                                    where                                   */
  /* -------------------------------------------------------------------------- */
  /**
   * What does Where do?
   * It filters items based on a specific condition, meaning it returns only items that meet the condition.
   * For example, if you have a list of numbers and you want to get only the even numbers, you can use Where to filter them out.
   */
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var evenNumbers = numbers.where((num) => num.isEven).toList();

  print(evenNumbers);

  /* -------------------------------------------------------------------------- */
  /*                                 indexWhere                                 */
  /* -------------------------------------------------------------------------- */
  /**
   * What does indexWhere do?
   * It returns the index of the first item that meets a specific condition.
   * For example, if you have a list of numbers and you want to find the index of the first even number, you can use indexWhere to get that index.
   */

  List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Eve'];
  var index = names.indexWhere((name) => name == 'Charlie');

  /**
   * or we can get same input with another way
   * var index = names.indexWhere((name) => name.startwith('0'));
   */
  print(index); // Output: 2

  /**
   * Summary table
   * | Function      | Description                                                 | Short Example |
   * |---------------|-------------------------------------------------------------|---------------------------------------------
   * | where         | Filters items based on a condition                          | numbers.where((num) => num.isEven).toList() 
   * | indexWhere    | Returns the index of the first item that meets a condition  | names.indexWhere((name) => name == 'Charlie') 
   */
}

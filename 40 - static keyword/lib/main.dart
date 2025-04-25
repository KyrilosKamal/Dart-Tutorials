void main() {
  /**
   * In Dart, the static keyword is used to define variables and functions that belong to the class itself, rather than to a specific object of it. 
   * This means that these members can be accessed directly via the class name without having to create an object.
   * =============================================================================
   * What is static in Dart?
   * 1. Static Variables: Variables shared by all objects in a class. They are initialized only once when the class is loaded.
   * 2. Static Methods: Functions that belong to the class itself and cannot access the variables or functions of objects (i.e., they cannot use this).
   * 3. Static Constants: Constants that are shared across all instances of a class.
   * 4. Static Blocks: Code blocks that are executed when the class is loaded.
   * 5. Static Classes: Classes that cannot be instantiated and can only contain static members.
   * 6. Static Imports: Importing static members of a class so they can
   */

  // Example:
  print(MathUtils.pi); // Access to the constant variable
  print(MathUtils.calculateCircleArea(5)); // Constant function call

  /**
   * Important Notes: 
   * 1. Accessing static members: This is done directly through the class name, such as ClassName.memberName.
   * 2. Not using this: Inside static functions, the this keyword cannot be used because it does not belong to a specific object.
   * 3. Initialization once: Static variables are initialized only once when the class is loaded, saving memory consumption.
   */

  /* -------------------------------------------------------------------------- */
  /*                                  Summary:                                  */
  /* -------------------------------------------------------------------------- */
  /*
  element                  | Description
  ============================================================================
  static                   | Used to define members that belong to the class itself and not to a specific object.
  static variables         | Common to all objects of the class and initialized only once.
  static methids           | It can be called without creating an object and cannot access members of the object.
  access satatic members   | | Directly through the class name, e.g., ClassName.memberName.
  */
}

//In this example, pi and calculateCircleArea are static members that can be accessed directly via the MathUtils class name without creating an object of it.
class MathUtils {
  static const double pi = 3.14159;

  static double calculateCircleArea(double radious) {
    return pi * radious * radious;
  }
}

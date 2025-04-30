void main() {
  /**
     * In Dart, the concept of an abstract class is used to define a class from which objects cannot be created directly, but rather serves as a blueprint for other classes that inherit from it.
     * This type of class is used to define a common interface or common behavior that derived classes must implement.
     * ========================================================================
     * 
     * What is an abstract class in Dart?
     * 1. Definition of an abstract class: A class that contains functions without implementation (abstract functions) and serves as the basis for other classes.
     * 2. Abstract functions: Functions declared without implementation within the abstract class, and derived classes must implement them.
     * 3. Impossibility of creating objects: An object cannot be created directly from an abstract class.
     * 4. Usage: Used to define a common interface or common behavior that derived classes must implement.
     */

  // Example of an abstract class

  Dog dog = new Dog(); // Create an instance of the Dog class

  dog.makeSound(); // Call the makeSound method
  dog.sleep(); // Call the sleep method from the Animal class
  // Output:
  // Woof! Woof!
  // Animal is sleeping.

  /* -------------------------------------------------------------------------- */
  /*                                   Summery                                  */
  /* -------------------------------------------------------------------------- */
  /*
| Element                            | Description                                                                 |
|------------------------------------|-----------------------------------------------------------------------------|
| `abstract class`                   | Defines a class that cannot be instantiated directly.                        |
| Abstract Methods                   | Methods declared without implementation; must be implemented by subclasses. |
| Concrete Methods                   | Methods with implementation; can be used or overridden by subclasses.       |
| Instantiation                      | Cannot create an object directly from an abstract class.                     |
| Inheritance                        | Subclasses must implement all abstract methods of the abstract class.        |
*/
}

//In this example, the Animal class is an abstract class containing an abstract function makeSound and a regular function sleep.
//The Dog class inherits from Animal and implements the makeSound function.

// Abstract class
abstract class Animal {
  void makeSound(); // Abstract method without implementation

  void sleep() {
    print("Animal is sleeping."); // Concrete method with implementation
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof! Woof!");
  }
}

void main() {
  /**
   * In Dart, multilevel inheritance refers to a chain of inheritance where a class inherits from another class, which in turn inherits from a third class, and so on.
   * This creates a hierarchy where the last class in the chain has access to properties and functions defined in all previous classes.
   * ===========================================================================
   * 
   * What is multi-level inheritance in Dart?
   * - Multi-level inheritance: When a class inherits from another derived class, forming a chain of inheritance.
   * - Usage: It is used to organize code into a hierarchy that enables classes to reuse and extend code.
   */

  //Example
  Dog dog = new Dog();

  dog.eat(); // Output: Animals eat food
  dog.breath(); // Output: Mammals breath air
  dog.bark(); // Output: Dog barks
  // The Dog class can access methods from both the Animal and Mammal classes.

  /* -------------------------------------------------------------------------- */
  /*                                   Summery                                  */
  /* -------------------------------------------------------------------------- */
  /*
| Element                      | Description                                                                 |
|------------------------------|-----------------------------------------------------------------------------|
| Multilevel Inheritance       | A chain of inheritance where a class inherits from a derived class.         |
| `extends` keyword            | Used to establish inheritance between classes.                              |
| Access to properties/methods | The final class in the chain can access all inherited properties and methods.|
| Usage                        | Organizes code and promotes reusability in a hierarchical structure.        |
*/
}
// In this example, we have a class hierarchy with three levels: Animal, Mammal, and Dog.
// The Dog class inherits from the Mammal class, which in turn inherits from the Animal class.
//This demonstrates multi-level inheritance.

class Animal {
  void eat() {
    print("Animals eat food");
  }
}

// The Mammal class inherits from the Animal class and adds its own method.
// The Dog class inherits from the Mammal class and adds its own method.
// This demonstrates multi-level inheritance.
class Mammal extends Animal {
  void breath() {
    print("Mammals breath air");
  }
}

// The Dog class inherits from the Mammal class and adds its own method.
// The Dog class can access methods from both the Animal and Mammal classes.
// This demonstrates multi-level inheritance.
class Dog extends Mammal {
  void bark() {
    print("Dog barks");
  }
}

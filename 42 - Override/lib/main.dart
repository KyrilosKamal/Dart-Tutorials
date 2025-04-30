void main() {
  /**
   * In Dart, the concept of override is used to allow a child class to override a function inherited from its parent class, enabling it to customize or modify the behavior of that function to suit its needs.
   * 
   * What is Override in Dart?
   * 1. Inheritance: When a child class inherits from another parent class, it receives all the properties and functions of the parent class.
   * 2. Override: If a child class needs to change the behavior of an inherited function, it can override it using the @override keyword.
   */

  /**
   * Important Notes:
   * 1. Signature Identity: The signature of the function (name, return type, and parameters) in the child class must be exactly the same as the function in the parent class.
   * 2. The inability to override some functions: Functions defined as static or final cannot be override in the parent class.
   * 3. Using super: The super keyword can be used within a redefined function to call the original function from the parent class.
   */

  // Example of Override in Dart

  Dog dog = new Dog();

  dog.makeSound(); // Output: Dog barks
  // The makeSound() function in the Dog class overrides the makeSound() function in the Animal class.

  /* -------------------------------------------------------------------------- */
  /*                                   Summery                                  */
  /* -------------------------------------------------------------------------- */

  /*
| Element                 | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `@override`             | Indicates that a method overrides a method from the superclass.             |
| Method Signature        | Must exactly match the method in the superclass (name, return type, parameters). |
| `static` and `final` methods | Cannot be overridden in the subclass.                                 |
| Using `super`           | Calls the superclass's method from the overriding method in the subclass.   |
*/
}

//In this example, the Dog class redefines the makeSound function inherited from the Animal class, to provide custom behavior.

// the superclass Animal has a method makeSound() that prints "Animal makes a sound".
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

// The subclass Dog overrides the makeSound() method to provide its own implementation.
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks");
  }
}

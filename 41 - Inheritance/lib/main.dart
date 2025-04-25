void main() {
  /**
   * In Dart, inheritance is a fundamental principle of object-oriented programming (OOP). 
   * This concept allows the creation of a new class (the child) that inherits properties and functions from an existing class (the parent), promoting code reuse and hierarchical organization.
   * Inheritance enables the child class to access and override methods and properties of the parent class, facilitating polymorphism and dynamic method resolution.
   * This means that a child class can provide its own implementation of a method that is already defined in its parent class, allowing for more specific behavior while still maintaining the structure and functionality of the parent class.
   * 
   * 
   * What is inheritance in Dart?
   * 1. Superclass: A class that contains properties and functions that can be inherited.
   * 2. Subclass: A class that inherits from its parent class and can use its properties and functions, as well as add new properties and functions or modify existing ones.
   * 3. Inheritance: The process of creating a subclass from a superclass.
   * 4. Parent class: The class that is inherited from.
   * 5. Child class: The class that inherits from the parent class.
   * In Dart, the extends keyword is used to implement inheritance.
   */

  // Example
  // In this example, Student inherits from Person, and therefore can use the properties and functions defined in Person, in addition to its own properties and functions.
  Student student = new Student(); // Creating an object of the Student class

  student.name =
      "Kyrillos"; // Setting the name property inherited from the Person class
  student.age = 20; // Setting the age property inherited from the Person class

  student.school =
      "Modern Academy"; // Setting the school property of the Student class

  student.displayInfo(); // output: Name: Kyrillos, Age: 20
  // Calling the displayInfo method inherited from the Person class
  student.displaySchool(); //output: School:Modern Academy

  /**
 * Supported inheritance types in Dart:
 * 1. Single inheritance: One class inherits from only one other class.
 * 2. Multilevel inheritance: A class inherits from another class, which in turn inherits from another class.
 * 3. Hierarchical inheritance: Multiple classes inherit from the same parent class.
 * Note: Dart does not support multiple inheritance to avoid complexity, but mixins can be used to achieve similar functionality.
 */

  /* -------------------------------------------------------------------------- */
  /*                                   Summery                                  */
  /* -------------------------------------------------------------------------- */
  /*
| Element                 | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `extends`               | Keyword used to inherit from a parent class.                                |
| Superclass (Parent)     | The class whose properties and methods are inherited.                       |
| Subclass (Child)        | The class that inherits from the superclass.                                |
| Single Inheritance      | A class inherits from one superclass.                                       |
| Multilevel Inheritance  | A class inherits from a subclass, forming a chain.                          |
| Hierarchical Inheritance| Multiple classes inherit from the same superclass.                          |
| Multiple Inheritance    | Not supported directly in Dart; use mixins instead.                         |
| Mixins                  | A way to reuse code from multiple classes using the `with` keyword.         |
*/
}

/// The Parent class (Person) with properties and methods.
/// It contains the properties name and age, and a method displayInfo() to display the information of the person.
class Person {
  String? name;
  int? age;
  void displayInfo() {
    print("Name: $name, Age: $age");
  }
}

/// The Subclass (Student) inherits from the Parent class (Person).
class Student extends Person {
  String? school;
  void displaySchool() {
    print("School:$school");
  }
}

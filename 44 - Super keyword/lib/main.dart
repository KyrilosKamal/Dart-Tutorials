void main() {
  /**
   * In Dart, the super keyword is used to refer to a superclass from within a subclass.
   * It is used to access variables, functions, and constructors of the parent class, especially when there is overlapping names between classes.
   * ===========================================================================
   * 
   * What is super in Dart?
   * 1. Accessing parent class variables: When variables with the same name exist in both parent and child classes, super can be used to access the parent class variable.
   * 2. Calling parent class functions: super can be used to call parent class functions, especially when redefining functions in the child class.
   * 3. Calling the parent class constructor: super can be used to call the parent class constructor from within the child class constructor.
   */
  // Example:
  //In this example, the Student class inherits from the Person class.
  //Super is used to call the parent class's constructor and pass the name, as well as to call the parent class's introduce function within the child class's redefined function.

  Student student = new Student("Kyrillos", 30, "Modern Academy");

  student.indroduce(); // Output: My name is Kyrillos, I study at Modern Academy

  /*
| Element             | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `super.variable`    | Accesses a variable from the parent class when there's a naming conflict.   |
| `super.method()`    | Calls a method from the parent class, especially when overridden in child.  |
| `super()`           | Invokes the parent class constructor from the child class constructor.      |
| Primary Usage       | To avoid naming conflicts and reuse parent class functionalities.           |
*/
}

/**
 * In this example, we have a Person class with a constructor that takes name and age as parameters.
 * The Student class extends the Person class and adds a school property.
 * The Student class constructor calls the Person class constructor
 * using the super keyword to initialize the name and age properties.
 * The indroduce method in the Student class overrides the indroduce method in the Person class and calls it using super.
 */

class Person {
  String? name;
  int? age;
  Person(this.name, this.age);
  void indroduce() {
    print("My name is $name");
    print("I am $age years old");
  }
}

/**
 * The Student class extends the Person class and adds a school property.
 * The constructor of the Student class takes name, age, and school as parameters and calls the constructor of the Person class using super.
 * The indroduce method in the Student class overrides the indroduce method in the Person class and calls it using super.
 * This allows the Student class to inherit the properties and methods of the Person class while also adding its own functionality.
 * The output of the program will be: 
 * My name is Kyrillos, I am 30 years old, I study at Modern Academy
 */
class Student extends Person {
  String? school;

  Student(String name, int age, this.school)
    : super(name, age); // Calling the parent class constructor

  @override
  void indroduce() {
    super.indroduce(); // Calling the parent class function
    print("I study at $school");
  }
}

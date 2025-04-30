
import 'Logger.dart';
void main(){
  /**
   * In Dart, the concept of a mixin is used to reuse code across multiple classes without the need for traditional inheritance. 
   * A mixin allows methods to be added to classes in a flexible manner, reducing duplication and promoting reusability.
   */

  /**
   * What is a mixin?
   * A mixin is a special type of class defined using the mixin keyword. 
   * It contains a set of functions that can be "mixed" into another class using the with keyword. 
   * An instance cannot be created directly from a mixin, and it cannot contain a constructor.
   */




  User user = new User("John Doe");
  user.greet(); // Output: Hello, John Doe!

  user.log("This is a log entry."); // Output: This is a log entry.
  // Output: This is a log entry.


  print("=========================================");
  print("Dog Example");

  Dog dog = new Dog('Buddy');
  dog.run(); // Buddy is running


  /*
| Element                 | Description                                                             |
|-------------------------|-------------------------------------------------------------------------|
| `mixin`                 | Keyword to define a mixin                                               |
| `with`                  | Keyword to apply a mixin to a class                                     |
| No constructor          | Mixins cannot have constructors                                         |
| Cannot be instantiated  | Cannot create an instance directly from a mixin                         |
| Reusable across classes | Can be applied to multiple classes to reuse code                        |
| `on`                    | Used to restrict mixin application to specific classes or types         |
*/

}



class User with Logger {
  String name;
  
  User(this.name);

  void greet() {
    log('Hello, $name!');
  }
}



// كلاس أساسي
class Animal {
  String name;
  Animal(this.name);

}mixin CanRun on Animal {
  void run() {
    print('$name is running');
  }
}

class Dog extends Animal with CanRun {
  Dog(String name) : super(name);
}


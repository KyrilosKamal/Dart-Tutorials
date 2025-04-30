import 'private.dart';
void main (){
  // Explain private keyword in Dart
  /**
   * In Dart, there are no reserved words like private or public, as there are in other languages ​​like Java or C#. 
   * Instead, privacy is specified at the library level using an underscore (_) at the beginning of a variable, function, or class name. When _ is used, the element becomes private and can only be accessed from within the same library (i.e., the same file or files linked using part).
   */


  // Create an instance of Employee class
  Employee emp = Employee("John Doe", 12345);

  // Accessing public method
  emp.displayPublic(); // Output: Public method: 12345
  // Accessing private method (will cause an error if uncommented)  
  //emp._displayPrivate(); // Output: Private method: John Doe
  



  /*
| Element               | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| Leading underscore `_`| Marks a variable, method, or class as private within the same library       |
| Privacy in Dart       | Enforced at the library level, not at the class level                       |
| Access from other files| Not allowed if the member is private (starts with `_`)                      |
| Common usage          | Hiding internal implementation details from external access                 |
*/

}
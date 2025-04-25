void main() {
  /**
   * What is a Getter and a Setter?
   * Getter: A function used to retrieve the value of a specific property from a class. It is defined using the get keyword.
   * Setter: A function used to set or update the value of a specific property in a class. It is defined using the set keyword.
   * Each variable in a class has a default Getter and Setter. However, these defaults can be overridden by defining a custom Getter and Setter.
   */

  Student student =
      Student()
        ..name = "Kyrillos"
        ..age = 20; // Using cascade operator to set properties

  print(student.name); // Kyrillos
  print(student.age); // 20

  student.studentAge = 25; // Using setter to update age
  print(student.studentAge); // 25

  student.studentName = "John"; // Using setter to update name
  print(student.studentName); // John

  /**
   * Benefits of Using Getters and Setters:
   * Validating values: You can validate values ​​before setting them, as in the example of verifying that an age is non-negative.
   * Access control: You can make some properties read-only or write-only.
   * Encapsulation: By hiding the implementation details of properties and providing a uniform interface for interacting with them.
   */
}

class Student {
  String? name;
  int? age;

  // Getter for name
  String get studentName {
    return name!;
  }

  // Setter for name
  set studentName(String name) {
    this.name = name;
  }

  // Getter for age
  int get studentAge {
    return age!;
  }

  // Setter for age
  set studentAge(int age) {
    if (age <= 0) {
      print("Age cannot be negative.");
    } else {
      this.age = age;
    }
  }
}
/* -------------------------------------------------------------------------- */
/*                                   Summery                                  */
/* -------------------------------------------------------------------------- */

/*
| Element             | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| **Getter**          | A method used to retrieve the value of a property. Defined using `get`.     |
| **Setter**          | A method used to set or update the value of a property. Defined using `set`.|
| **Value Validation**| Setters can include logic to validate data before assigning it.             |
| **Read-Only**       | Define only a getter without a setter to make a property read-only.         |
| **Write-Only**      | Define only a setter without a getter to make a property write-only.        |
*/

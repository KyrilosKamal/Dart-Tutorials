void main() {
  /**
   * What is Constructor?
   * A constructor is a special function used to initialize objects upon creation. 
   * The constructor is called automatically when a new object is created from a class and is used to set initial values ​​for properties or implement specific initialization logic.
   * Types of Constructors in Dart:
   * | Type              | Description                                                                 |
   * |-------------------|-----------------------------------------------------------------------------|
   * | Default           | Automatically created if no constructor is defined in the class. Takes no parameters. |
   * | Parameterized     | Takes parameters to initialize property values.                             |
   * | Named             | Used when more than one constructor is needed in the same class. Defined with a unique name after the class name. |
   * | Const             | Used to create constant objects that cannot be changed after creation. Declared with the `const` keyword. |
   * | Redirecting       | Redirects to another constructor within the same class using the syntax `: this(...)`. |
   * | Factory           | Used when you want to control the object creation process, such as returning an existing object or performing custom logic before creation. Declared with the `factory` keyword. |
   */
  //1. Default Constructor

  print("Default Constructor:");
  var person1 = Person1(); // Default Constructor
  print(person1); // Instance of 'Person'

  print("======================================");
  /* -------------------------------------------------------------------------- */
  /*                          ------------------------                          */
  /* -------------------------------------------------------------------------- */

  //2. Parameterized Constructor

  print("Parameterized Constructor:");
  var person2 = Person2('John', 30); // Parameterized Constructor
  print("Person Name: $person2.name"); // John
  print("Person Age: $person2.age"); // 30

  print("======================================");
  /* -------------------------------------------------------------------------- */
  /*                          ------------------------                          */
  /* -------------------------------------------------------------------------- */
  //3. Named Constructor
  print("Named Constructor:");
  Map<String, dynamic> data = {'name': 'Alice', 'age': 25};
  var person3 = Person3.fromJson(data); // Named Constructor
  print("Person Name: ${person3.name}"); // Alice
  print("Person Age: ${person3.age}"); // 25

  print("======================================");
  /* -------------------------------------------------------------------------- */
  /*                          ------------------------                          */
  /* -------------------------------------------------------------------------- */
  //4. Const Constructor
  print("Const Constructor:");

  const point1 = Point1(10, 20); // Const Constructor
  const point2 = Point1(10, 20); // Const Constructor
  print("Point1: (${point1.x}, ${point1.y})"); // Point1: (10, 20)
  print("Point2: (${point2.x}, ${point2.y})"); // Point2: (10, 20)
  print(identical(point1, point2)); // true
  // The identical function checks if two references point to the same object in memory.

  print("======================================");
  /* -------------------------------------------------------------------------- */
  /*                          ------------------------                          */
  /* -------------------------------------------------------------------------- */
  //5. Redirecting Constructor

  print("Redirecting Constructor:");

  var point3 = Point2.origin(); // Redirecting Constructor
  print("Point3: (${point3.x}, ${point3.y})"); // Point3: (0, 0)
  // The redirecting constructor `origin` calls the primary constructor with default values of 0 for both x and y coordinates.

  print("======================================");
  /* -------------------------------------------------------------------------- */
  /*                          ------------------------                          */
  /* -------------------------------------------------------------------------- */
  //6. Factory Constructor
  print("Factory Constructor:");
  var logger1 = Logger('App');
  var logger2 = Logger('App');
  print(identical(logger1, logger2)); // output: true

  print("======================================");
  /* -------------------------------------------------------------------------- */
  /*                          ------------------------                          */
  /* -------------------------------------------------------------------------- */

  /**
 * Important Notes
 * this: Used to refer to the current properties of an object within the constructor.
 * const: Used to create immutable objects that cannot be changed after creation.
 * factory: Used when we want to control the object creation process, such as returning an existing object or executing custom logic before creation.
 */
}

//1. Default Constructor
class Person1 {
  Person() {
    print('Object created from Person');
  }
}

// 2.Parameterized Constructor
class Person2 {
  String? name;
  int? age;
  Person2(this.name, this.age); // Parameterized Constructor
}

// 3. Named Constructor
class Person3 {
  String? name;
  int? age;
  Person3(this.name, this.age); // Parameterized Constructor

  Person3.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age']; // Named Constructor
  }
}

// 4. Const Constructor
class Point1 {
  final int x;
  final int y;
  const Point1(this.x, this.y); // Const Constructor
}

// 5. Redirecting Constructor
class Point2 {
  final int x;
  final int y;
  Point2(this.x, this.y); // Primary Constructor

  Point2.origin() : this(0, 0); // Redirecting Constructor
  // The redirecting constructor `origin` calls the primary constructor with default values of 0 for both x and y coordinates.
}

// 6. Factory Constructor

class Logger {
  // Private constructor
  static final Map<String, Logger> _cache = <String, Logger>{};

  /// Factory constructor
  /// Returns an existing instance of Logger if it exists, or creates a new one.
  final String name;

  /// The name of the logger instance.
  Logger._internal(this.name); // Private named constructor

  /// Factory constructor to create or return an existing Logger instance.
  /// If an instance with the same name already exists, it returns that instance.
  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }
}

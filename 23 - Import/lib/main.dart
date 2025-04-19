void main() {
  /**
   * What is import in Dart?
   * In Dart, the import keyword is used to bring external libraries or packages into your current file, allowing you to use the functions, classes, and constants defined in them.
   * This is similar to including header files in C or importing modules in Python.
   * The import statement is typically placed at the top of the Dart file, and it can import both built-in libraries and third-party packages.
  */
  /**
   * Types of imports in Dart:
   * 1. Importing built-in Dart libraries: Starts with dart: and is used to access system libraries.
   */
  //import 'dart:math'; // Importing the math library for mathematical functions and constants.
  //import 'dart:io'; // Importing the IO library for input and output operations.
  //import 'dart:async'; // Importing the async library for asynchronous programming.

  /**
  * 2. Import packages from pub.dev: Starts with package: and is used to import external packages.
  *    - Example: import 'package:http/http.dart' as http; // Importing the http package for making HTTP requests.
  */

  /**
   * 3. Import Local Files: Used to import Dart files into your project.
   * import 'utils/helpers.dart'; // Import a helper file from the utils directory.
   */

  //Advanced options with imports:
  /**Using `as` to specify a prefix: Used to avoid name collisions when importing libraries with similar names.
   * 
   * import 'package:lib1/lib1.dart';
   * import 'package:lib2/lib2.dart' as lib2;
   * void main() {
   *  var obj1 = MyClass(); // from lib1
   *  var obj2 = lib2.MyClass(); // from lib2
   * }
  */

  /**
   * Using `show` to import specific elements: Used to import only specific elements from the library.
   * import 'dart:math' show pi, sqrt;
   * void main() {
   * print(pi); // 3.141592653589793
   * print(sqrt(16)); // 4.0
   * }
   */

  /**
   * Using hide to hide specific elements: Import everything except the selected elements.
   * import 'dart:math' hide max;
   * void main() {
   * print(min(5, 10)); // 5
   * // print(max(5, 10)); // Error: max is undefined
   * }
   */

  /* -------------------------------------------------------------------------- */
  /*                Importing packages from pub.dev step by step                */
  /* -------------------------------------------------------------------------- */

  /**
   * 1. Add the package to the pubspec.yaml file:
   * dependencies:
   *   http: ^0.13.3
   * 
   * 2. Run the following command in the terminal:
   * flutter pub get
   * 
   * 
   * 3. Import the package in your Dart file:
   * import 'package:http/http.dart' as http;
   */

  /* -------------------------------------------------------------------------- */
  /*                               Important notes                              */
  /* -------------------------------------------------------------------------- */
  /**
   * - The import statement must be at the top of the file, before any other code.
   * - You can import multiple libraries in a single file.
   * - You can use relative paths to import files within your project.
   * - Avoid circular imports, as they can lead to compilation errors.
   * - Use `as` to create a prefix for the imported library to avoid name conflicts.
   * - Use `show` and `hide` to control what is imported from a library.
   * - Use `package:` to import packages from pub.dev and `dart:` to import built-in libraries.
   * - Use `import 'file.dart';` to import local files.
   * as, show, and hide can be used together:
   *    import 'package:lib/lib.dart' as lib show MyClass;

   */
}

void main(){
  /**
   * What is implements in Dart?
   * Interface: In Dart, every class can be considered an implicit interface. When using implements, the implementing class must provide an implementation for all functions and properties declared in the class used as an interface.
   * The difference between implements and extends:
   * 1. extends: Used to inherit the implementation and behavior of another class.
   * 2. implements: Used to implement an interface of another class without inheriting its implementation, forcing the implementing class to provide its own implementation for all declared members.
   * 3. Implementing multiple interfaces: A class can implement more than one interface by using a comma between class names.
   */

  // Example of using implements in Dart

  FileLogger fileLogger = FileLogger();
  fileLogger.log("Hello, Dart!.");   // Output: Writing to file: This is a log message.


/*
| Element               | Description                                                                 |
|-----------------------|-----------------------------------------------------------------------------|
| `implements`          | Used to implement an interface without inheriting its implementation.       |
| Implement All Members | The implementing class must provide implementations for all declared members.|
| Multiple Interfaces   | A class can implement multiple interfaces separated by commas.              |
| Difference from `extends` | `extends` inherits behavior; `implements` requires own implementation. |
*/


}


//In this example, the File Logger class implements the Logger interface and provides a private implementation of the log function.
// The Logger interface defines the contract for logging messages, while the FileLogger class provides a specific implementation of that contract.
// The Logger interface defines a contract for logging messages.
// Any class that implements this interface must provide an implementation for the log method.
// The FileLogger class implements the Logger interface and provides a specific implementation of the log method, which writes the message to a file.
// The Logger interface defines a contract for logging messages. Any class that implements this interface must provide an implementation for the log method. The FileLogger class implements the Logger interface and provides a specific implementation of the log method, which writes the message to a file.


class Logger {
  void log(String message) {
    print('Log: $message');
  }
}


class FileLogger implements Logger {
    @override
    void log (String message) {
        print("Writing to file: $message");
    }
}


import 'dart:io';

// Initialize The List
List myList = [];

void main() {
  print("Welcome to the To Do List App!");

  /* -------------------------------------------------------------------------- */
  /*                                  Menu Items                                */
  /* -------------------------------------------------------------------------- */
  while (true) {
    print("Pease Select an Option:");
    print("1. Add a Task");
    print("2. Remove a Task");
    print("3. Edit a Task");
    print("5. View All Tasks");
    print("6. Exit");

    /* -------------------------------------------------------------------------- */
    String? input = stdin.readLineSync();
    if (input == null) {
      print("Invalid input. Please try again.");
      return;
    }
    switch (input) {
      case "1":
        addTask();
        break;
      case "2":
        removeTask();
        break;
      case "3":
        editTask();
        break;
      case "5":
        showTask();
        break;
      case "6":
        print("Exiting the app. Goodbye!");
        return;
      default:
        print("Invalid option. Please try again.");
    }
    print("===========================================================");
  }
}

/// Function to add a new task to the list
/// It prompts the user to enter a task and adds it to the list.
void addTask() {
  print("Enter the task you want to add:");
  String? task = stdin.readLineSync();
  if (task != null) {
    myList.add(task);
    print("Task added successfully!");
  } else {
    print("Invalid input. Please try again.");
  }
}

// Function to show tasks from the list
// This function displays all the tasks in the list.
void showTask() {
  if (myList.isEmpty) {
    print("No tasks available.");
  } else {
    print("Your tasks are:");
    for (int i = 0; i < myList.length; i++) {
      print("${i + 1}. ${myList[i]}");
    }
  }
}

// Function to remove a task from the list
void removeTask() {
  showTask();
  print("Enter the task number you want to remove:");
  String? input = stdin.readLineSync();
  if (input != null) {
    int index = int.parse(input) - 1;
    if (index >= 0 && index < myList.length) {
      myList.removeAt(index);
      print("Task removed successfully!");
    } else {
      print("Invalid task number. Please try again.");
    }
  } else {
    print("Invalid input. Please try again.");
  }
}

// Function to edit a task in the list
void editTask() {
  showTask();
  print("Enter the task number you want to edit:");
  String? input = stdin.readLineSync();
  if (input != null) {
    int index = int.parse(input) - 1;
    if (index >= 0 && index < myList.length) {
      print("Enter the new task:");
      String? newTask = stdin.readLineSync();
      if (newTask != null) {
        myList[index] = newTask;
        print("Task updated successfully!");
      } else {
        print("Invalid input. Please try again.");
      }
    } else {
      print("Invalid task number. Please try again.");
    }
  } else {
    print("Invalid input. Please try again.");
  }
}

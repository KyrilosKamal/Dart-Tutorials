import 'dart:io';

void main() {
  print("Welcome to the File Organizer!");
  print(
    "This program will help you organize your files into folders based on their extensions.",
  );
  // The user can choose to organize files in a specific directory or the current directory.
  print("Please choose a directory to organize:");
  print("1. Current directory");
  print("2. Specific directory");
  String? choice = stdin.readLineSync();
  // Function to organize files in a directory

  void organizeFiles(Directory directory) {
    if (!directory.existsSync()) {
      print("The directory does not exist.");
      return;
    }

    // List all files in the directory
    List<FileSystemEntity> files = directory.listSync();
    for (var file in files) {
      if (file is File) {
        String extension = file.path.split('.').last;
        Directory folder = Directory('${directory.path}/$extension');
        if (!folder.existsSync()) {
          folder.createSync();
        }
        file.renameSync('${folder.path}/${file.uri.pathSegments.last}');
      }
    }

    print("Files have been organized successfully.");
  }

  if (choice == '1') {
    // Organize files in the current directory
    Directory currentDirectory = Directory.current;
    organizeFiles(currentDirectory);
  } else if (choice == '2') {
    // Ask the user for a specific directory
    print("Please enter the path of the directory you want to organize:");
    String? path = stdin.readLineSync();
    if (path != null && path.isNotEmpty) {
      Directory specificDirectory = Directory(path);
      organizeFiles(specificDirectory);
    } else {
      print("Invalid path. Exiting.");
    }
  } else {
    print("Invalid choice. Exiting.");
  }
}

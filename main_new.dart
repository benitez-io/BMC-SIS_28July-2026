import 'dart:io';

List<Map<String, dynamic>> student = [];

void main() {
  while (true) {
    print("----------------------------");
    print("1. Add Students");
    print("2. View the students Info");
    print("3. Update the Info");
    print("4. Delete the Student Info");
    print("5. Exit\n");
    print("----------------------------");
    print("Choose number from 1-5\n");

    int menu = int.parse(stdin.readLineSync()!);

    switch (menu) {
      case 1:
        add_student();
        print("\nAdd Students\n");
        break;

      case 2:
        view_student();
        print("\nView the students Info\n");
        break;

      case 3:
        update_student();
        print("\nUpdate the Info\n");
        break;

      case 4:
        delete_student();
        print("\nDelete\n");
        break;

      case 5:
        print("\nExit\n");
        return;

      default:
        print("\nInvalid Number:) Choose number from 1-5\n");
    }
  }
}

void add_student() {
  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  print("Enter course: ");
  String course = stdin.readLineSync()!;

  print("Enter year level: ");
  String year_level = stdin.readLineSync()!;

  student.add({"name": name, "course": course, "year_level": year_level});
}

void view_student() {
  print("2. View the students Info");
  if (student.isEmpty) {
    print("No Records Found");
    return;
  }

  for (int i = 0; i < student.length; i++) {
    var students = student[i];
    print("Name: ${students['name']}, Course: ${students['course']}, Year Level: ${students['year_level']}");
  }
}

int searchStudent() {
  if (student.isEmpty) {
    print("No records found");
    return -1;
  }

  view_student();

  stdout.write("Enter index of student: ");
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index >= 0 && index < student.length) {
    return index;
  } else {
    print("Student not found.");
    return -1;
  }
}

void update_student() {
  print("3. Update the Info");
  
  int index = searchStudent();

  if (index != -1) {
    stdout.write("Enter new name: ");
    String name = stdin.readLineSync()!;

    print("Enter new course: ");
    String course = stdin.readLineSync()!;

    print("Enter new year level: ");
    String year_level = stdin.readLineSync()!;

    student[index] = {
      "name": name,
      "course": course,
      "year_level": year_level
    };

    print("Student updated successfully.");
  }
}

void delete_student() {
  print("4. Delete the Student Info");

  int index = searchStudent();

  if (index != -1) {
    student.removeAt(index);
    print("Student deleted successfully.");
  }
}
void exit() {
  print("5. Exit");
}

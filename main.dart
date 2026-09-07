import 'dart:io';
List<Map<String,dynamic>> students =[];
void main(){
    //User Input (Console)
    // stdout.write("Enter your name:");
    // String? name = stdin.readLineSync();
    // stdout.write("Enter your Age:");
    // String? age = stdin.readLineSync();
    // stdout.write("Enter your Course:");
    // String? course = stdin.readLineSync();
    // stdout.write("Your GWA: ");
    // double gwa = double.parse (stdin.readLineSync()!);


    // print ("Hello $name");
    // print ("Type your Age: $age");
    // print ("Type your course: $course");
    // print ("GWA: $gwa");

    //Control Flow (If Else)
    // if (gwa <=1.75){
    //     print("Excellent");
    // } else if (gwa <=2.75){
    //     print("Very Good");
    // } else if (gwa <=3.75){
    //     print("Passed");
    // } else{
    //     print("Probation");
    // }


//Switch Statements
    print ("<---STUDENT INFORMATION SYSTEM--->");
    print ("0. Search Student");
    print ("1. Add Student");
    print ("2. View Student List");
    print ("3. Update Student Info");
    print ("4. Delete Student Info");

    String? menu = stdin.readLineSync();
    switch (menu){
        case "0":
        print ("Search Student");

        case "1":
        print ("Add Student");
        addStudent();
        break;

        case "2":
        print ("View Student List");
        break;

        case "3":
        print ("Update Student Info");
        break;

        case "4":
        print ("Delete Student Info");
        break;
        
        default:
            print("Invalid Input");
    }
}

void addStudent(){

    // User Input (Console)
    stdout.write("Enter your name:");
    String? name = stdin.readLineSync();
    stdout.write("Enter your Age:");
    String? age = stdin.readLineSync();
    stdout.write("Enter your Course:");
    String? course = stdin.readLineSync();
    stdout.write("Your GWA: ");
    double gwa = double.parse (stdin.readLineSync()!);

    var status = gwa;
    // Control Flow (If Else)
    if (gwa <=1.75){
        print("Excellent");
    } else if (gwa <=2.75){
        print("Very Good");
    } else if (gwa <=3.75){
        print("Passed");
    } else{
        print("Probation");
    }

    students.add({"name": name,
                "age": age,
                "course": course,
                "gwa" : gwa,
                "status" : status});
    print ("Added Successful");

}


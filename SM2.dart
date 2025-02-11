//  Add students to a class
//  Add grades for each student
//  Calculate the average grade for each student
//  Calculate the average grade for each class

// Creating the Classes
import 'dart:io';

class Student {
  //properties
  String? name;
//method of display
  void DisplayName() {
    print('Name: $name');
  }
}

class Grades {
  //properties
  String? name;
  late List<String?> subjects;
  late List<int?> scores;

  void DisplayGrades() {
    print('Name: $name');
    print('Subject: $subjects');
    print('Score: $scores');
  }
}

class StudentAverage {
  String? name;
  late List<String?> subjects;
  late List<double?> scores;
  double? scoresum;
  double? average;

  void DisplayAverage() {
    print('Name: $name');
    print('Subjects: $subjects');
    print('Scores: $scores');
    print('Scoresum: $scoresum');
    print('Average: $average');
  }
}

class TotalAverage {
  late List<double?> scores;
  double? scoresum;
  double? average;

  void DisplayClassAvg() {
    print('Scores: $scores');
    print('Scoresum: $scoresum');
    print('Average: $average');
  }
}

void main() {
  // initailizing user prompt

  while (true) {
    print('Welcome to Student Management System!');
    print('1. Add Student Name:');
    print('2. Student Grades:');
    print('3. Student Average:');
    print('4. Class Average:');
    print('5. exit!');
    stdout.write('Enter Your Choice:');
    var choice = stdin.readLineSync()!;

    if (choice == exit) {
      print('Goodbye!');
    }

    switch (choice) {
      case '1':
        Student S1 = Student();
        stdout.write('Enter StudentName:');
        S1.name = stdin.readLineSync();

        S1.DisplayName();

        break;

      case '2':
        Grades G1 = Grades();
        stdout.write('Enter StudentName:');
        G1.name = stdin.readLineSync();

        stdout.write('Enter Subjects:');
        G1.subjects = [stdin.readLineSync()];

        stdout.write('Enter Scores:');
        G1.scores = [];
        G1.scores.add(int.tryParse(stdin.readLineSync() ?? ''));

        G1.DisplayGrades();

        break;

      case '3':
        StudentAverage sa1 = StudentAverage();
        stdout.write('Enter StudentName:');
        sa1.name = stdin.readLineSync();

        stdout.write('Enter Subjects:');
        sa1.subjects = [stdin.readLineSync()];

        stdout.write('Enter Scores:');
        sa1.scores = [];
        sa1.scores.add(double.tryParse(stdin.readLineSync() ?? ''));

        sa1.scoresum = sa1.scores.reduce((a, b) => a! + b!);
        sa1.average = (sa1.scoresum! / sa1.scores.length);

        sa1.DisplayAverage();

        break;

      case '4':
        TotalAverage cla1 = TotalAverage();

        stdout.write('Enter Scores:');
        cla1.scores = [];
        cla1.scores.add(double.tryParse(stdin.readLineSync() ?? ''));

        cla1.scoresum = cla1.scores.reduce((a, b) => a! + b!);
        cla1.average = (cla1.scoresum! / cla1.scores.length);

        cla1.DisplayClassAvg();
    }
  }
}

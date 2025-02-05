import 'dart:core';
import 'dart:core';
import 'dart:ffi';
import 'dart:io';

//Crreating the various classes.
class Student {
  String? name;
  Student(String name) {
    this.name = name;
  }
}

class Grades {
  String? name;
  String? subject;
  int? score;
  Grades(String name, String subject, int score) {
    this.name = null;
    this.subject = subject;
    this.score = score;
  }
}

class studentAverage {
  String? name;
  late List<int?> score;

  studentAverage(this.name, this.score);
}

class classAverage {
  List<double?> totalaverage;
  classAverage(this.totalaverage);
}

//Initializing user prompt.
void main() {
  List<Student> students = [];

  while (true) {
    print('Student Grade Management System');
    print('1. Student Name');
    print('2. Grades');
    print('3. Student Average');
    print('4. Class Average');
    print('5. Exit:');
    stdout.write('Choose an option:');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        students;

        break;
    }
    switch (choice) {
      case '2':
        Grades;

        break;
    }
    switch (choice) {
      case '3':
        StudentAverage;
        break;
    }
    switch (choice) {
      case '4':
        ClassAverage;
        break;
    }
    switch (choice) {
      case '5':
        print('Goodbye!');
        break;
    }
  }
}
//Displaying the Classes.

void StudentName(List<Student> students) {
  print('Enter Student Name:');
  String? name = stdin.readLineSync();
}

void Grade(String name, String subjects, int score) {
  print('Enter Student Name:');
  String? name = stdin.readLineSync();
  print('Enter the subject:');
  String? subjects = stdin.readLineSync();
  print('Enter the score:');
  int? score = stdin.readByteSync();
}

void StudentAverage(String name, List<int?> score) {
  print('Enter student name:');
  var name = stdin.readLineSync();

  print('Enter Student Scores:');
  var studentScore = int.parse(stdin.readLineSync() ?? '');

  int? sum = score.reduce((a, b) => a! + b!);
  double? average = sum! / score.length;

  print('Sum: $sum');
  print('Student Average: $average');
}

void ClassAverage(List<double?> totalaverage) {
  print('Enter Students Total Averages:');
  var Averages = double.parse(stdin.readLineSync() ?? '');

  double? sumAvg = totalaverage.reduce((a, b) => a! + b!);
  double? classAverage = sumAvg! / totalaverage.length;

  print('Sum of Averages: $sumAvg');
  print('ClassAverage: $classAverage');
}

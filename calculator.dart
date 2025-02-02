import 'dart:ffi';
import 'dart:io';

void main() {
// Prompt the user input
  print('Enter the first number:');
  var Num1 = stdin.readLineSync();
  print('Enter the second number:');
  var Num2 = stdin.readLineSync();

  print("Chose the operator('+, -, *, /')");
  String operator = stdin.readLineSync()!;

// Perform the calculation based on the operator
  double result;
  switch (operator) {
    case '+':
      result = double.parse(Num1!) + double.parse(Num2!);
      print(result);

      break;
    default:
  }
  switch (operator) {
    case '-':
      result = double.parse(Num1!) - double.parse(Num2!);
      print(result);

      break;
    default:
  }
  switch (operator) {
    case '*':
      result = double.parse(Num1!) * double.parse(Num2!);
      print(result);

      break;
    default:
  }
  switch (operator) {
    case '/':
      result = double.parse(Num1!) / double.parse(Num2!);
      print(result);

      break;
    default:
  }
}

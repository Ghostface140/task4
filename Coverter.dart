import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

void main() {
  print('Welcome to Units Converter!');
  print('Chose a Metric of conversion!');
  print('1. Lengths (meters to feet)');
  print('2. Weight (Kilograms to pounds)');
  print('3. Temperature (Celsuis to Fahrenheit)');
  print('Choice:');

  var Choice = stdin.readLineSync();
  int ConversionType = int.tryParse(Choice ?? '') ?? 0;

  //Get user input for the value
  print('Enter the value to convert:');
  var Number = stdin.readLineSync();
  double input = double.parse(Number!);

  // Perform the conversion based on the selected type
  double convertedNumber = 0.0;
  String fromUnit = '';
  String toUnit = '';

  switch (ConversionType) {
    case 1:
      // length Conversion: meters to feet
      convertedNumber = double.parse(Number) * 3.281;
      fromUnit = 'Meters';
      toUnit = 'Feet';

      break;
    default:
  }
  switch (ConversionType) {
    case 2:
      //  Weight Conversion: Kilograms to pounds
      convertedNumber = double.parse(Number) * 2.2046;
      fromUnit = 'kilograms';
      toUnit = 'pounds';
      break;
    default:
  }
  switch (ConversionType) {
    case 3:
      // Temperature: Celsius to Fahrenheit
      convertedNumber = (double.parse(Number) * 9 / 5) + 32;
      fromUnit = 'Celsuis';
      toUnit = 'Fahrenheit';

      break;
    default:
  }
  //Display the result
  print("$Number $fromUnit : $convertedNumber $toUnit");
}

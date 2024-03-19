//this code extracts first and last digit from integer value

import 'dart:math';

void main() {
  //print('Enter Digit');
  int number = 123;

  int numDigits = (number == 0) ? 1 : (number.toString().length);

  int firstDigit = number ~/ (pow(10, numDigits - 1));

  int lastDigit = number % 10;

  print('First Digit = $firstDigit');
  print('Last Digit = $lastDigit');
}

//this code extracts first and last digit from integer value

import 'dart:math';

void main() {
  //print('Enter Digit');
  int number = 05114;

  int numDigits = (number == 0) ? 1 : (number.toString().length);

  int firstDigit = number ~/ (pow(10, numDigits - 1));

  int lastDigit = number % 10;

  print('First Digit = $firstDigit');
  print('Last Digit = $lastDigit');

  //swapping of first and last digit

  int temp = number;
  int power = 1;
  print('Inside While Loop');

  while (temp >= 10) {
    temp = temp ~/ 10;
    power = power * 10;
    print('Temp = $temp');
    print('Power = $power');
  }
  print('************');
  print('Power = $power');
  print('************');
  int newNumber = lastDigit * power;
  print('First New Number(newNumber = lastDigit * power) =\n $newNumber');
  newNumber = newNumber + number % power;
  print(
      'Second New Number(newNumber = newNumber + number % power) =\n $newNumber');
  newNumber = newNumber - lastDigit;
  print('Third New Number(newNumber = newNumber - lastDigit) =\n $newNumber');
  newNumber = newNumber + firstDigit;
  print('Fourth New Number(newNumber = newNmber + firstDigit) =\n $newNumber');
  print(newNumber);
  print('************');
}

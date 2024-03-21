//this program finds hcf

import 'dart:io';

void main() {
  print('Enter First Number');
  int numberex1 = int.parse(stdin.readLineSync()!);
  print('Enter Second Number');
  int numberex2 = int.parse(stdin.readLineSync()!);

  print('Calculated HCF = ${countHcf(numberex1, numberex2)}');
}

countHcf(int a, int b) {
  while (b != 0) {
    int reminder = a % b;
    a = b;
    b = reminder;
  }
  return a;
}

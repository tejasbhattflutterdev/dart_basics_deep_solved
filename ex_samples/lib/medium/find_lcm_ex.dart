import 'dart:io';

void main() {
  print('Enter First Digit');
  int numberex1 = int.parse(stdin.readLineSync()!);

  print('Enter First Digit');
  int numberex2 = int.parse(stdin.readLineSync()!);

  print('LCM = ${calculateLcm(numberex1, numberex2)}');
}

calculateLcm(int a, int b) {
  int max = (a > b) ? a : b;
  int step = max;

  while (true) {
    if (max % a == 0 && max % b == 0) {
      return max;
    }
    max = max + step;
  }
}

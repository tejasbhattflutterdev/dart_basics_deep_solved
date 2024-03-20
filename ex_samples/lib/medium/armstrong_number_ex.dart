import 'dart:io';

void main() {
  print('Enter Number');
  int num = int.parse(stdin.readLineSync()!);

  checkArmstrong(num);
}

checkArmstrong(int number) {
  int sum = 0;
  int temp = number;

  while (temp > 0) {
    int digit = temp % 10;
    sum = sum + (digit * digit * digit);
    temp = temp ~/ 10;
  }

  if (number == sum) {
    print('Number is armstrong');
  } else {
    print('Not armstrong');
  }
}

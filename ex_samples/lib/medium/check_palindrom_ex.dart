//palindrom - means read same for backwards and forwards
//means - 121

void main() {
  int number = 123454321;
  bool isPalindrom = checkPalindrom(number);
  if (isPalindrom) {
    print('Number is palindrom');
  } else {
    print('Number is not palindrom');
  }
}

bool checkPalindrom(int number) {
  int reversedNumber = 0;
  int originalNumber = number;

  while (number > 0) {
    int reminder = number % 10;
    reversedNumber = reversedNumber * 10 + reminder;
    number = number ~/ 10;
  }

  return originalNumber == reversedNumber;
}

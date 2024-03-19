import 'dart:io';

void main() {
  print('Enter String');
  String newString = stdin.readLineSync()!;
  print('You have entered');
  print(newString);
  print('Reverse String = ${reverseString(newString)}');
}

reverseString(String str) {
  String reverse = str.split('').reversed.join();
  //print(reverse);
  return reverse;
}

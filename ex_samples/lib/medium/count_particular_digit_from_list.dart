import 'dart:io';

void main() {
  print('Please enter String items to List');
  String input;
  List<String> inputList = [];
  try {
    while ((input = stdin.readLineSync()!) != 'done') {
      inputList.add(input);
    }
  } catch (e) {
    print('Some Error Occured');
  }
  print('===========');
  print(inputList);
  List<String> myList = [
    '4',
    '4',
    '4',
    '4',
    '4',
  ];
  int count = 0;
  String findableDigit = '4';
  for (var element in myList) {
    if (element == findableDigit) {
      count++;
    }
  }
  print(count);
}

import 'dart:io';

void main() {
  print('Enter Numbers Seperated By Comma');
  String ip = stdin.readLineSync()!;
  List<int> myNumbers = commaSeperatedNumbers(ip);
  print(myNumbers);
}

List<int> commaSeperatedNumbers(String input) {
  List<int> numbers = [];
  List<String> val = input.split(',');
  for (String v in val) {
    int? number = int.tryParse(v.trim());
    if (number != null) {
      numbers.add(number);
    }
  }
  return numbers;
}

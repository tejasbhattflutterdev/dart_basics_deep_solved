import 'dart:io';

void main() {
  stdout.write('Enter numbers separated by commas: ');
  String input = stdin.readLineSync()!;
  List<int> numbers = parseCommaSeparatedNumbers(input);
  print('Entered Numbers: $numbers');
}

List<int> parseCommaSeparatedNumbers(String input) {
  List<int> numbers = [];
  List<String> values = input.split(',');
  for (String value in values) {
    int? number = int.tryParse(value.trim());
    if (number != null) {
      numbers.add(number);
    }
  }
  return numbers;
}

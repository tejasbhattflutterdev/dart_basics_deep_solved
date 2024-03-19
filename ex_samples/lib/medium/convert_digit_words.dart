void main() {
  print('Enter number (upto 999)');
  //int number = int.parse(stdin.readLineSync()!);
  int number = 1;
  print('You have entered = $number');
  print('Total digits in number = ${number.toString().length}');
  print('Conversion From Digit to words = ${numberToWords(number)}');
}

String numberToWords(int num) {
  List<String> units = [
    '',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  ];
  List<String> teens = [
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'fifteen',
    'sixteen',
    'seventeen',
    'eighteen',
    'nineteen'
  ];
  List<String> tens = [
    '',
    '',
    'twenty',
    'thirty',
    'forty',
    'fifty',
    'sixty',
    'seventy',
    'eighty',
    'ninety'
  ];

  if (num == 0) {
    return 'zero';
  }

  String words = '';
  if (num >= 100) {
    words = '$words${units[num ~/ 100]} hundread ';
    num = num % 100;
  }

  print(words);
  if (num >= 10 && num < 20) {
    words = words + teens[num - 10];
    print('Between 10 and 20 $words');
  } else {
    words = ' $words${tens[num ~/ 10]}  ${units[num % 10]}';
  }
  return words.trim();
}

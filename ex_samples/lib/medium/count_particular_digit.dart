//count digit 4 from sequence of digits

void main() {
  int findableDigit = 4;

  int digit = 41234445;
  int count = 0;
  final totalCount = digit.toString().split('').forEach(
    (element) {
      if (element == findableDigit.toString()) {
        print('Element Found');
        count++;
      }
    },
  );

  print('Total Count = $count');
}

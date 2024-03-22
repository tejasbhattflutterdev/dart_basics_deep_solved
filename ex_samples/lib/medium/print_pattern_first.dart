import 'dart:io';

void main() {
  printPatternEx();
}

void printPatternEx() {
  int size = 11;

  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size - 1; j++) {
      stdout.write('  ');
    }
    for (int k = 0; k <= i; k++) {
      int num = (k + i) % 10;
      stdout.write('$num ');
    }
    for (int l = i - 1; l >= 0; l--) {
      int num = (i + 1) % 10;
      stdout.write('$num ');
    }
    stdout.write('\n');
  }
}

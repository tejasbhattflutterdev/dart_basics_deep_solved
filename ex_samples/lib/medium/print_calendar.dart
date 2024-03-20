import 'dart:io';

void main() {
//  print('Enter Year');
//  int year = int.tryParse(stdin.readLineSync()!) ?? DateTime.now().year;

//  print('Enter Month');
//  int month = int.tryParse(stdin.readLineSync()!) ?? DateTime.now().month;

  int year = 2024;
  int month = 1;

  final date = DateTime(year, month, 1);
  final lastDay = DateTime(year, month + 1, 0);
  final firstWeekDay = date.weekday;

  print('Year = ${date.year}');
  print('Month = ${date.month}');
  print('First Day Of Month = ${date.day} Last Date Of Month = ${lastDay.day}');

  printCalendar(
    month: month,
    year: year,
    firstWeekDay: firstWeekDay,
    lastDay: lastDay.day,
  );
}

void printCalendar({
  required int month,
  required int year,
  required int firstWeekDay,
  required int lastDay,
}) {
  final monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  print('${monthNames[month - 1]} $year');

  print('=====================');
  print(' Su Mo Tu We Th Fr Sa');

  for (int i = 0; i < firstWeekDay; i++) {
    stdout.write('   ');
  }

  for (int day = 1; day <= lastDay; day++) {
    if (day < 10) {
      stdout.write(' ');
    }
    stdout.write(' $day');

    if ((day + firstWeekDay) % 7 == 0 || day == lastDay) {
      print('');
    }
  }
}

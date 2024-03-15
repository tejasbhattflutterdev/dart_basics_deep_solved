//1. i have this string ABC and i got output such as A B C
//2. i have this string and i want output such as 1A1 1B1 1C1
//3. where() method - filter elements based on a condition
//4. use of any() function
//5. use of splitMapJoin() method
//6. use of fold() function
void main() {
  List<String> charList = ['A', 'B', 'C'];

  String concatenatedString = charList.join('');
  String stringWithSpace = concatenatedString.split('').join(' * ');
  print('String with join method $concatenatedString');
  print('==============================');
  print('String with space - $stringWithSpace');

  // print('=======================================');
  // print('2.');
  // print('=======================================');
  // String myStr = 'A B C';
  // String modifiedString = myStr.split(' ').map((word) => '1${word}1').join(' ');
  // print('String with output like 1A1 1B1 1C1');
  // print(modifiedString);
  // print('=======================================');

  // //=====================================================
  // //3.

  // List<String> myStringFirst = [
  //   'ABC',
  //   'CDEF',
  //   'GHI',
  // ];
  // String searchTerm = 'c';
  // String lowerCaseSearchTerm = searchTerm.toLowerCase();
  // List<String> mySecondString = myStringFirst.where((element) {
  //   return element.contains(lowerCaseSearchTerm.toUpperCase());
  // }).toList();

  // print('============================================');
  // print('use of where function of List<String>');
  // print(mySecondString);
  // if (mySecondString.isNotEmpty) {
  //   print('String found in List =$mySecondString');
  // } else {
  //   print('Not Found');
  // }
  // //======================================================
  // //4.

  // List<String> myStringThird = [
  //   'ABCD',
  //   'DEFGH',
  //   'DIJKL',
  //   'MNOP',
  //   'PQRS',
  // ];
  // //returns boolean
  // final isBoolCondtionEx = myStringThird.any((element) {
  //   return element.split('').contains('D');
  // });

  // print('use of any() method');
  // print('As per above condition == $isBoolCondtionEx');

  // //it will print all elements which satisfies condition
  // print('==========================');
  // print('It will print all elements which starts with d finds from list');

  // for (int i = 0; i < myStringThird.length; i++) {
  //   if (myStringThird[i].contains('d'.toUpperCase())) {
  //     print(myStringThird[i]);
  //   }
  // }
  // //=======================================================
  // //5.

  // final myNewString = 'APPLE | BANANA | MANGO | a';
  // final mySplitMapJoin = myNewString.splitMapJoin(
  //   ' | ',
  //   onMatch: (p0) {
  //     return ' * ';
  //   },
  //   onNonMatch: (p0) {
  //     return p0.toLowerCase();
  //   },
  // );
  // print('==========================');
  // print('splitMapJoin() function');
  // print(mySplitMapJoin);

  //=======================================================
  //6.

  // final numbers = <double>[
  //   10,
  //   2,
  //   5,
  //   0.5,
  // ];
  // const initialValue = 100.0;
  // final result = numbers.fold<double>(initialValue, (previousValue, element) {
  //   print('previous value = $previousValue');
  //   print('element = $element');
  //   return (previousValue + element);
  // });

  // print('use of fold() function');
  // print('===============================');
  // print(result);
}

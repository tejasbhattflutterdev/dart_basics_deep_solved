void main() {
  //i have this list and i want to combine this list based on index
  //when we reach at index 4 i want to print apple
  //after that when i reach index 10 i want to print banana
  //after that it will prit cherry

  List<String> seperatedList = [
    'A',
    'p',
    'p',
    'l',
    'e',
    'B',
    'a',
    'n',
    'a',
    'n',
    'a',
    'C',
    'h',
    'e',
    'r',
    'r',
    'y'
  ];

  final joinMethod = seperatedList.join('');
  String newCurrentWord = '';
  String currentWord = '';
  for (int i = 0; i < seperatedList.length; i++) {
    print('seperated list character = ${seperatedList[i]}');
    currentWord = currentWord + seperatedList[i];

    if (i == 4 || i == 10 || i == seperatedList.length - 1) {
      print(currentWord);
      newCurrentWord = newCurrentWord + seperatedList[0];
      print('New Current Word = $newCurrentWord');
      currentWord = '';
    }
  }

  print('=======');
  String myNewWord = '';
  List<String> newList = [];
  print(joinMethod);
  for (int i = 0; i < joinMethod.length; i++) {
    if (joinMethod[i] == joinMethod[i].toUpperCase()) {
      myNewWord = myNewWord + joinMethod[i];
      print(joinMethod[i]);
      newList.add(joinMethod[i]);
    }
  }
  print('==========newList==========');
  print(newList);
  print(' *$myNewWord');
  final mNewList = newList.expand((e) {
    return e.split(', ');
  });
  print('mNewList =  $mNewList');
  print('replace comma from mNewList');
  final anewList = mNewList.expand(
    (element) {
      return element.split(', ');
    },
  ).map((e) {
    return e.replaceAll(',', ' ');
  }).toList();
  print('===========================');
  print('List Without Comma =  $anewList');
}

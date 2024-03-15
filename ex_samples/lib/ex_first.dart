//this program converts this list =
//List<String> splitList = [
//   'A',
//   'p',
//   'p',
//   'l',
//   'e',
//   'B',
//   'a',
//   'n',
//   'a',
//   'n',
//   'a',
//   'C',
//   'h',
//   'e',
//   'r',
//   'r',
//   'y',
// ]; to this [Apple, Banana, Cherry]

void main() {
  List<String> splitList = [
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
  String word = '';
  List<String> wordList = [];
  for (var c in splitList) {
    if (c == c.toUpperCase()) {
      if (word.isNotEmpty) {
        print('==============================');
        print('Inside Second if condition');
        print(wordList);
        print('==============================');
        wordList.add(word);
        word = '';
      }
    }
    word = word + c;
    print('word = word + c  *= $word');
  }
  print('above word.isNotEmpty');
  print(wordList);
  if (word.isNotEmpty) {
    print('Inside word.isNotEmpty');
    wordList.add(word);
    print('Word = $word');
    print('WordList = $wordList');
  }

  print(wordList);
}

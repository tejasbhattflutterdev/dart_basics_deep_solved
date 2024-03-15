void main() {
  List<String> myStringList = ['Ab', 'Bc', 'Cd'];
  List<String> wordList = [];
  String word = '';

  for (final c in myStringList) {
    if (c == c.toUpperCase()) {
      print('Upper Case Character = $c');
    }
    word = '';
    word = word + c;
    wordList.add(word);
  }
  print(wordList);
  print(word);
}

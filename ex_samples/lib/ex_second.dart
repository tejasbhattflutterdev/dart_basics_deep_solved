void main() {
  List<String> stringList = ['Apple', 'Banana', 'Cherry'];

  List<String> myList = stringList.expand((element) {
    for (int i = 0; i < stringList.length; i++) {
      print('$i = $element');
    }
    return element.split('');
  }).toList();

  print(myList);
}

class ExFirst {
  operationOnList() {
    List<String> list = ['a b c'];

    List<String> modifiedList = list
        .map((string) => string.split(' ').map((char) => '4$char').toList())
        .expand(
      (element) {
        return element;
      },
    ).toList();

    print(modifiedList);
    return modifiedList;
  }
}

void main(List<String> arguments) {
  ExFirst firstOperation = ExFirst();
  final val = firstOperation.operationOnList();
  print(val);
}

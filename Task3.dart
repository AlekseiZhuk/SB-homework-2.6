String stroka = 'привет1 13 в7 мне 45 классно 25';

List<int> findNumbersInString(String parseString) {
  List<int> num = [];
  for (var i = 0; i < parseString.length; i++) {
    if (int.tryParse(parseString[i]) != null) {
      num.add(int.parse(parseString[i]));
    }
  }
  return num;
}

List<int> findNumbersAsWordInString(String parseString) {
  List<int> num = [];
  List<String> findedWords = parseString.split(" ");
  for (var word in findedWords) {
    if (int.tryParse(word) != null) {
      num.add(int.parse(word));
    }
  }
  return num;
}

void main(List<String> args) {
  print(findNumbersInString(stroka));
  print(findNumbersAsWordInString(stroka));
}

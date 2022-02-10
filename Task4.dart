List<String> collectionWords = [
  'Привет',
  'Амлет',
  'Привет',
  'Привет',
  'Амлет',
  'Вопрос',
  'Ответ',
  'Привет',
  'Привет',
  'Ответ'
];

Map<String, int> countMap(List<String> collection) {
  Map<String, int> mapWords = {};
  for (var i = 0; i < collection.length; i++) {
    if (mapWords[collection[i]] == null) {
      mapWords.addAll({collection[i]: 1});
    } else {
      mapWords[collection[i]] = mapWords[collection[i]]! + 1;
    }
  }
  return mapWords;
}

void main(List<String> args) {
  print(countMap(collectionWords));
}

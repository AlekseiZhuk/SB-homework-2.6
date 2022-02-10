List<String> collection = ['one', 'two', 'dog', 'one', 'car', 'five'];
Map<String, int> numMap = {
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9,
  'zero': 0,
};

Set<int> findNumCollection(List<String> collection) {
  Set<int> numCollection = {};
  for (var word in collection) {
    if (numMap[word] != null) {
      numCollection.add(numMap[word]!);
    }
  }
  return numCollection;
}

void main(List<String> args) {
  print(findNumCollection(collection));
}

import 'dart:math';

int chislo = 123;

int chislo2 = 0001011;

num convertTo10(int number) {
  num tmp = 0;
  List<String> numbers = number.toString().split('');
  for (var i = 0; i < number.toString().length; i++) {
    if (numbers[numbers.length - 1 - i] == '0') continue;
    tmp += pow(2, i);
  }
  return tmp;
}

String convertTo2(int number) {
  String binaryNumber = '';
  num tmp = 0;
  while (number > 0) {
    tmp = number % 2;
    number = (number / 2).toInt();
    binaryNumber = tmp.toString() + binaryNumber;
  }
  return binaryNumber;
}

void main(List<String> args) {
  print(convertTo10(10100));
  print(convertTo2(501));
}

extension FindSQRT on num {
  double? findSQRT(int power) {
    double x = 1;
    for (var i = 0; i < 100; i++) {
      x = 1 / power * ((power - 1) * x + this / findXminus1(x, power));
    }
    return x;
  }
}

double findXminus1(double x, int power) {
  double xMinus1 = x;
  for (var i = 1; i < power - 1; i++) {
    xMinus1 = xMinus1 * x;
  }
  return xMinus1;
}

void main(List<String> args) {
  num number = 27;
  print(number.findSQRT(3));
}

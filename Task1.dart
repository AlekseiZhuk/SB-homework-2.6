int x = 3;
int y = 4;

int findGCD(int a, int b) {
  while (b != 0) {
    int tmp = a % b;
    a = b;
    b = tmp;
  }
  return a;
}

double findLCM(int a, int b) {
  return (a * b) / findGCD(a, b);
}

List<int> findPrimeFactors(int x) {
  List<int> primeFactors = [];
  int tmp = x;
  for (var i = 2; i <= tmp; i++) {
    if (tmp % i == 0) {
      primeFactors.add(i);
      tmp = (tmp / i).toInt();
      i--;
    }
  }
  return primeFactors;
}

void main(List<String> args) {
  print(findGCD(x, y));
  print(findLCM(x, y));
  print(findPrimeFactors(1092));
}

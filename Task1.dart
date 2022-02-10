int x = 15;
int y = 20;

int findGreatestCommonDivisor(int a, int b) {
  int c;
  if (a < b) {
    c = a;
    a = b;
    b = c;
  }

  while (b != 0) {
    a %= b;
    c = a;
    a = b;
    b = c;
  }
  return a;
}

void main(List<String> args) {
  print(findGreatestCommonDivisor(x, y));
}

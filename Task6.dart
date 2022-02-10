import 'dart:math';

class Point {
  final int x;
  final int y;
  final int z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.oner() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point anotherPoint) {
    return sqrt((x - anotherPoint.x) * (x - anotherPoint.x) +
        (y - anotherPoint.y) * (y - anotherPoint.y) +
        (z - anotherPoint.z) * (z - anotherPoint.z));
  }
}

void main(List<String> args) {
  Point firstPoint = Point(0, 0, 0);
  Point anotherPoint = Point(0, 1, 1);

  print(firstPoint.distanceTo(anotherPoint));
  print(Point.zero().distanceTo(Point.oner()));
}

class Immutable {
  final int x;
  final int y;
  const Immutable(this.x, this.y);
}

void main() {
  var point1 = Immutable(10, 10);
  var point2 = Immutable(10, 10);
  print(point1 == point2);
  //kalau tanda "const" hasilnya akan 'false' karena dianggap berbeda
  //karena lokasi penyimpanan berbeda

  var point3 = const Immutable(10, 10);
  var point4 = const Immutable(10, 10);
  print(point3 == point4);
  //dengan memakai "const" maka hasilnya akan sama 'true'
}

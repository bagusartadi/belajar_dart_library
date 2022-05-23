class Rectangle {
  int _width = 0;
  int _length = 0;

  int get width {
    return _width;
  }

  set width(int value) {
    _width = value;
  }

  //atau penulisan lebih singkat:
  int get length => _length;
  set length(int value) => _length = value;
}

void main() {
  var rectangle = Rectangle();
  print(rectangle.width = 100);
  print(rectangle.length = 200);
}

class ArrayHelper {
  static int count<T>(List<T> list) {
    return list.length;
  }
}

void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  var names = ['budi', 'eko', 'arman'];

  print(ArrayHelper.count([1, 2, 3, 4, 5, 6, 7, 8]));
  print(ArrayHelper.count(names));
}

class Application {
  static final String apps = 'belajar dart';
  static final String author = 'bagus artadi';
}

class Math {
  static int sum(int first, int second) => first + second;
}

void main() {
  ///kalau sdh pakai static tidak perlu memanggil object dulu seperti:
  ///var application = Application();
  print(Application.apps);
  print(Application.author);
  print(Math.sum(5, 5));
}

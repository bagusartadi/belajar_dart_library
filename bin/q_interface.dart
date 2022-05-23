class Car {
  String name = '';
  void drive() {}

  int getTier() {
    return 0;
  }
}

//implements=> harus ditulis ulang semuanya yanga ada di parentnya
// extend=> semua yg ada di parent sdh otomatis ada

class Avanza implements Car {
  String name = 'Avanza';

  void drive() {
    print('lagi pakai avanza');
  }

  int getTier() {
    return 4;
  }
}

abstract class Location {
  String? name;
}

class City extends Location {
  City(String name) {
    this.name = name;
  }
}

abstract class Animal {
  String? name;
  void run(); //abstract method
}

class Cat extends Animal {
  void run() {
    print('Hello $name is running');
  }
}

void main() {
  var city = City('Denpasar');
  print(city.name);
  var cat = Cat();
  cat.name = 'luna';
  cat.run();
}

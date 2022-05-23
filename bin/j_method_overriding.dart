class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is VP ${this.name}');
  }
}

void main() {
  var mgr = Manager();
  mgr.name = 'joko';
  mgr.sayHello('eko');

  var vp = VicePresident();
  vp.name = 'artadi';
  vp.sayHello('eko');
}

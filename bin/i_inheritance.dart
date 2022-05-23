class Manager {
  String? name;
  void sayHello(String name) {
    print('Hello $name, myname is ${this.name}');
  }
}

class VicePresident extends Manager {
  String? gender;
}

void main() {
  var mgr = Manager();
  mgr.name = 'eko';
  mgr.sayHello('budi');

  var vp = VicePresident();
  vp.name = 'artadi';
  vp.sayHello('arya');
}

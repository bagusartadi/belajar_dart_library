class Manager {
  String? name;

  Manager(this.name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name) {
    print('boleh ada body');
  }
}

void main() {
  var mgr = Manager('budi');
  print(mgr.name);
  var vp = VicePresident('artadi');
  print(vp.name);
}

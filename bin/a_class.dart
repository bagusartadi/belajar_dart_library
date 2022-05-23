class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia'; //tdk bs diubah = final

  void sayHello(String paraName) {
    print('Hello $paraName, my name is $name');
  }

  String getName() {
    return 'hello, my name is $name';
  }
}

/*
membuat perpanjangan class diatas tanpa merubah isi asli class
memakai "extension"
 */
extension SayGoodByePerson on Person {
  void goodBye(String testName) {
    print('Good bye $testName, from $name');
  }
}

void main() {
  var person = Person();
  person.name = 'Eka';
  person.address = 'Bali';
  person.sayHello('artadi');
  print(person.address);
  person.goodBye('arman');
  print(person.getName());
}

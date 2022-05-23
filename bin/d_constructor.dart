class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  Person(this.name, this.address);

  Person.withName(String name) : this(name, 'x');

  Person.withAddress(String address) : this('x', address);

  Person.fromJakarta() : this.withAddress('JakArta');
}

void main() {
  var person = Person('Eko', 'Jakarta');
  print(person.name);
  print(person.address);

  var person2 = Person.withName('Budi');
  print(person2.name);
  print(person2.address);

  var person3 = Person.withAddress('Bali');
  print(person3.name);
  print(person3.address);

  var person4 = Person.fromJakarta();
  print(person4.address);
  print(person4.name);
}

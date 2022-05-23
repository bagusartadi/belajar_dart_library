import 'dart:mirrors';

abstract class CategoryRepository {
  id(String id);
  name(String name);
  quantity(int quantity);
  location(String location);
}

class Repository extends CategoryRepository {
  final String _name;
  Repository(this._name);

  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = 'select * from $_name where $column = $value';
    print(sql);
  }
}

void main() {
  //kalau sdh pakai abstract bisa tanpa tulis "dynamic" tapi dgn "var" saja
  var repository = Repository('product');
  repository.id('1');
  repository.name('laptop');
  repository.location('jakarta');
  repository.quantity(100);
}

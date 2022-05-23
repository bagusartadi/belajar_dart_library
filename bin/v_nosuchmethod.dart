import 'dart:mirrors';

class Repository {
  final String _name;
  Repository(this._name);

  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = 'select * from $_name where $column = "$value"';
    print(sql);
  }
}

void main() {
  // var repository = Repository('product');
  /// tidak bisa memanggil dgn memakai var disini;
  /// perhatikan perbedaannya di folder w_with_abstract
  dynamic repository = Repository('product');
  repository.id('1');
  repository.name('laptop');
  repository.quantity(100);
  //nama repository nya bebas dan bisa masuk semua
  repository.location('Jakarta');
  //untuk membatasi semua parameter yg dibuat maka dibuatkan abstract class w_abstract
}

class Category {
  String id = '';
  String name = '';
  Category(this.name, this.id);

  /* android studio menyediakan cara:
  code/generate/pilih parameter yg akan diukur dan 'OK'
   */
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is Category &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         name == other.name;
  //
  // @override
  // int get hashCode => id.hashCode ^ name.hashCode;

  bool operator ==(Object other) {
    if (other is Category) {
      if (name != other.name) return false;
      if (id != other.id) return false;
      return true;
    } else {
      return false;
    }
  }

  int get hashCode {
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }
}

void main() {
  var category1 = Category('1', 'laptop');
  var category2 = Category('1', 'laptop');

  print(category1 == category2);
  print(category1.hashCode);
  print(category2.hashCode);
}

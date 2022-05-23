class Orange {
  var quantity = 0;

  Orange operator +(Orange others) {
    var result = Orange();
    result.quantity = quantity + others.quantity;
    return result;
  }
}

void main() {
  var orange1 = Orange();
  orange1.quantity = 10;

  var orange2 = Orange();
  orange2.quantity = 5;

  var orange3 = orange1 + orange2;
  print(orange3.quantity);
}

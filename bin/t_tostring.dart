class Product {
  String? name;
  String? product;

  String toString() {
    return 'mendapatkan string $name & $product';
  }
}

void main() {
  var product = Product();
  product.name = 'laptop';
  product.product = 'casio';

  print(product.toString());
  print(product);
}

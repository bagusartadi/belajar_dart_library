enum CustomerLevel { silver, gold, diamond }

class Customer {
  String name;
  CustomerLevel level;
  Customer(this.name, this.level);
}

void main() {
  var customer = Customer('artadi', CustomerLevel.diamond);
  print(customer.name);
  print(customer.level);
  print(CustomerLevel.values);
}

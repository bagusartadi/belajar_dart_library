class Employee {
  String? name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name) {
    print('Hello Manager $name');
  }
}

//turunan dari Manager, semuanya masuk termasuk body nya
class VicePresident extends Manager {
  VicePresident(String name) : super(name) {
    print('Hello Vice President $name');
  }
}

void sayHello(Employee employee) {
  print('hello ${employee.name}');
}

void main() {
  Employee employee = Employee('eko');
  print(employee.name);
  print('\n');

  employee = Manager('budi');
  employee;
  sayHello(employee);
  print('\n');

  employee = VicePresident('artadi');
  employee;
  sayHello(employee); // ditulis : sayhello(Employee('artadi));
}

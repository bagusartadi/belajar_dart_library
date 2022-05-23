class Employee {
  String? name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePresident extends Manager {
  VicePresident(String name) : super(name);
}

void sayHello(Employee employee) {
  if (employee is VicePresident) {
    VicePresident vp = employee as VicePresident;
    //sebenarnya diatas tdk perlu kalau sdh "employee is VicePresident"
    print('Hello VP ${vp.name}');
  } else if (employee is Manager) {
    print('Hello Manager ${employee.name}');
  } else {
    print('Hello employee ${employee.name}');
  }
}

void main() {
  Employee employee = Employee('eko');
  sayHello(employee);

  employee = Manager('budi');
  sayHello(employee);

  employee = VicePresident('artadi');
  sayHello(employee);
}

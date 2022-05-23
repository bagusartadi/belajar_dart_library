class User {
  String? userName;
  String? name;
  String? email;
}

User? createUser() {
  return null;
}

void main() {
  var user = User();
  user.userName = 'eko';
  user.name = 'EKA';
  user.email = 'eko@contoh.com';

  //pakai ".." tidak pakai ";" perhatikan dibawah:
  var user2 = User()
    ..userName = 'eko'
    ..name = 'EKA'
    ..userName = 'eko@contoh.com';

  //yang bisa nullable:
  User? user3 = createUser()
    ?..userName = 'eko'
    ..name = 'EKA'
    ..email = 'eko@contoh.com';
}

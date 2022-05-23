class Database {
  Database() {
    print('create new database');
  }

  static Database database = Database();
  factory Database.ambil() {
    return database;
  }
}

void main() {
  var database1 = Database.ambil();
  var database2 = Database.ambil();
  print(database1 == database2);
  // Database.database;
}

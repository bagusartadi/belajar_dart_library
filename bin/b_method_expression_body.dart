class Computer {
  void startUp() => print('computer is starting');
  void shutDown() => print('computer is shutting down');
  String getOperatingSystem() => 'linux';
}

void main() {
  var computer = Computer();
  computer.startUp();
  computer.shutDown();
  print(computer.getOperatingSystem());
}

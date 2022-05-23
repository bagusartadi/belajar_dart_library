abstract class MultiMedia {}

mixin Playable {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stoppable {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

//mixin menggunakan "with", dan semua otomatis sdh ada seperti dibawah:

class Video with Playable, Stoppable {}

class Audio with Playable, Stoppable {}

void main() {
  var video = Video();
  video.name = 'Belajar Dart';
  video.play();
  video.stop();

  var audio = Audio();
  audio.name = 'Music Metalica';
  audio.play();
  audio.stop();
}

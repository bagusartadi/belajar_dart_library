abstract class MultiMedia {}

//mixin dibawah dibawah hanya untuk Multimedia saja
mixin Playable on MultiMedia {
  String? name;

  void play() {
    print('Play $name');
  }
}

mixin Stoppable on MultiMedia {
  String? name;

  void stop() {
    print('Stop $name');
  }
}

/*
karena hanya dibuat untuk Multimedia maka harus di
"extends" dgn multimedia dulu baru bisa dipakai
 */

class Video extends MultiMedia with Playable, Stoppable {}

class Audio extends MultiMedia with Playable, Stoppable {}

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

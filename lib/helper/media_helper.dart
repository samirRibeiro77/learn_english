import 'package:audioplayers/audioplayers.dart';

class MediaHelper {
  static final MediaHelper _mediaHelper = MediaHelper._internal();
  AudioPlayer? _player;
  AudioCache? _cache;

  MediaHelper._internal();

  factory MediaHelper() {
    return _mediaHelper;
  }

  get player {
    _player ??= AudioPlayer();
    _player?.audioCache = _cache!;
    return _player;
  }

  set cache(List<String> files) {
    _cache = AudioCache(prefix: "assets/audios/");
    List<String> filesCache = [];

    for (var file in files) {
      filesCache.add("$file.mp3");
    }

    _cache?.loadAll(filesCache);
  }

  playMp3(String name) {
    var source = AssetSource("$name.mp3");
    player?.play(source);
  }
}

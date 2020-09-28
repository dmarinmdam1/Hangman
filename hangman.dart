import 'game.dart';
import 'dictionary.dart';

void main() {
  HangMan.play();
}

class HangMan {
  static var dictionary = new Dictionary();
  static var game = new Game();

  static void play() async {
    String keyword = ((await dictionary.makeRandomWord()).toString());
    game.run(keyword.substring(2, keyword.length - 2).toUpperCase());
  }
}

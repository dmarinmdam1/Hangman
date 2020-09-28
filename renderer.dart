import 'gallows.dart';

class Renderer {
  final int max_mistakes;
  Gallows gallows = new Gallows();

  Renderer(this.max_mistakes);

  void drawInit(guessed) {
    print("EL AHORCADO");
    print("");
    print(guessed);
  }

  /*
   * #7. Hay que representar correctamente la horca
   * teniendo en cuenta la clase Gallows.
   */
  static String missedLetters(String keyword, List<String> letterTrialList) {
    var missedLetters = "";
    // stub (está mal, incorpora todas las letras, era para ver cambios)
    for (int i = 0; i < letterTrialList.length; i++) {
      if (keyword.toLowerCase().contains(letterTrialList[i].toLowerCase()) ==
          false) {
        missedLetters = "$missedLetters ${letterTrialList[i]}";
      }
    }
    return missedLetters;
  }

  void drawSuccess() {
    print("HAS GANADO!");
  }

  void drawFailure() {
    print("HAS PERDIDO!");
  }
}
import 'gallows.dart';

class Renderer {
  final int max_mistakes;
  Gallows gallows = new Gallows();

  Renderer(this.max_mistakes);

  void drawInit(guessed) {
    print("EL AHORCADO");
    gallows.impGallow(0);
    print(guessed);
    print("");
  }

  /*
   * #7. Hay que representar correctamente la horca
   * teniendo en cuenta la clase Gallows.
   */
  void drawGame(int mistakes, String missed, String guessed) {
    print("Te quedan ${max_mistakes - mistakes} fallos.");
    gallows.impGallow(mistakes);
    print(guessed);
    print("");
    if (mistakes > 0) print("Fallado: $missed");
  }

  void drawSuccess() {
    print("HAS GANADO!");
  }

  void drawFailure() {
    print("HAS PERDIDO!");
  }
}

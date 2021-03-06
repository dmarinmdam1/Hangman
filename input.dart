import 'dart:io';

class Input {
  /*
   * #2. Controlar que el byte leido es una letra.
   * Sino, devolver un caracter que luego se procese,
   * para no ser tratado como una letra valida.
   * Por ejemplo, en isNewLetterInList que devuelva falso.
   */
  static String readLetter() {
    stdin.echoMode = false;
    stdin.lineMode = false;
    stdout.write("Letra: ");
    int c = stdin.readByteSync();
    String s = String.fromCharCode(c).toUpperCase();

    if (s.contains(new RegExp(r'[A-Z]'))) {
      return s;
    } else {
      return "0";
    }
  }
}

class TxtProcessor {
  static String initGuessed(String keyword) {
    var guessedLetters = "";
    for (int i = 0; i < keyword.length; i++) {
      guessedLetters = "_ $guessedLetters";
    }
    return guessedLetters;
  }

  /*
   * #3. Se está probando una nueva letra? está en la lista de intentos?
   * Si la letra no está en [a-z] o [A-Z] será falso.
   * No es sensitivo a mayúsculas y minúsculas, la 'a' y la 'A' son igual.
   */
  static bool isNewLetterInList(String letter, List<String> letterTrialList) {
    if (letterTrialList.contains(letter) || letter == "0") return true;
    return false;
  }

  /*
   * #4. Comprobar si una letra está en una palabra.
   */
  static bool isLetterInWord(String letter, String word) {
    return word.contains(letter);
  }

  /*
   * #5. Las letras de la lista que estén en la palabra clave
   * deben ser representadas en las posiciones que aparecen en ella.
   * Si una letra no está en la lista se representará con guión bajo.
   * Entre las letras y los guiones hay un espacio para formatearlo.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "b u _ _ s e _ e"
   */
  // terminado
  static String guessedLetters(String keyword, List<String> letterTrialList) {
    String retorno = "";
    for (int i = 0; i < keyword.length; i++) {
      if (letterTrialList.contains(keyword[i]))
        retorno += keyword[i];
      else
        retorno += "_";
      if (i < keyword.length - 1) retorno += " ";
    }
    return retorno;
  }

  /*
   * #6. Las letras que están en la lista pero no en la palabra clave
   * deben aparecer separadas por un espacio.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "a i t"
   */
  static String missedLetters(String keyword, List<String> letterTrialList) {
    var missedLetters = "";
    // stub (está mal, incorpora todas las letras, era para ver cambios)
    for (int i = 0; i < letterTrialList.length; i++) {
      if (keyword.toLowerCase().contains(letterTrialList[i].toLowerCase()) == false) {
        missedLetters = "$missedLetters ${letterTrialList[i]}";
      }
    }
    return missedLetters;
  }
}

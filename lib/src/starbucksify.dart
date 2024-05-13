/// A silly package that converts a string to a Starbucks-like string.
class Starbucksify {
  static const Map<String, String> _starbucksMisspelledLetters = {
    'a': 'e',
    'e': 'a',
    'i': 'y',
    'o': 'u',
    'u': 'o',
    'A': 'E',
    'E': 'A',
    'I': 'Y',
    'O': 'U',
    'U': 'O',
  };

  /// Converts [letter] to a Starbucks-like string.
  static String _convert(String letter) {
    return _starbucksMisspelledLetters[letter] ?? letter;
  }

  /// Converts [text] to a Starbucks-like string.
  static String starbucksify(String text) {
    return text.split('').map(_convert).join();
  }
}

import 'dart:math';

/// A class that mimics the often humorous misspelling of names on Starbucks cups.
class Starbucksify {
  static final Random _random = Random();

  static const Map<String, List<String>> _starbucksMisspellings = {
    'a': ['e', 'a', 'aa', 'ar'],
    'e': ['a', 'i', 'ee', 'ea'],
    'i': ['y', 'ie', 'ee', 'ai'],
    'o': ['u', 'oo', 'oa', 'o'],
    'u': ['o', 'uu', 'ue', 'u'],
    'A': ['E', 'A', 'Aa', 'Ar'],
    'E': ['A', 'I', 'Ee', 'Ea'],
    'I': ['Y', 'Ie', 'Ee', 'Ai'],
    'O': ['U', 'Oo', 'Oa', 'O'],
    'U': ['O', 'Uu', 'Ue', 'U'],
  };

  /// Converts a single letter with a humorous misspelling.
  static String _convert(String letter) {
    if (_starbucksMisspellings.containsKey(letter)) {
      final List<String> replacements = _starbucksMisspellings[letter] ?? [];
      return replacements[_random.nextInt(replacements.length)];
    }
    return letter;
  }

  /// Converts a string to a humorously misspelled version, similar to a Starbucks cup.
  static String starbucksify(String text) {
    return text
        .split('')
        .map((char) => _random.nextBool() ? _convert(char) : char)
        .join();
  }
}

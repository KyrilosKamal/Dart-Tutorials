void main() {
  /**
   * What do runes mean?
   * Runes in Dart are the way you can represent Unicode code points (the symbols your computer uses to store all letters, symbols, and special characters).
   * For example, the letter "A" has a numeric Unicode code called U+0041, and the letter "😊" has a second, capitalized code called U+1F60A.
   */
  //Example:

  String emoji = '😊';
  print(emoji.runes); // Output: (128522)
  // emoji.runes returns the Unicode code point of the symbol, and in the case of 😊 it returns 128522.

  /**
   * How do we write a string using runes?
   * If you want to write Unicode characters directly using the code:
   */
  var heart = String.fromCharCode(0x2764); // رمز القلب ❤
  print(heart);
  // for more than 1 symbole:
  var runes = Runes('\u2665 \u{1f600}'); // ❤ 😀
  print(String.fromCharCodes(runes)); // Output: ❤ 😀
  /**
   * \u Used with 4-digit Unicode
   * \u{} Used if the code is longer than 4 digits
   */

  /**
   * Why use runes?
   * Because Dart's strings operate on UTF-16 code units, and if there are special characters (such as emoji or non-Latin languages), they can be split into strange objects.
   * Runes allow you to treat a character as a single character, even if it takes up more than two bytes.
   */

  //Practical example — We iterate over each character in String:
  String message = 'Hi 😊!';
  // The message.runes property returns an iterable of the Unicode code points of the characters in the string.
  for (var rune in message.runes) {
    print(
      'Unicode: $rune -> ${String.fromCharCode(rune)}',
    ); // Output: Unicode: 72 -> H
  }

  /**
   * summary:
   * String.runes               returns a list of Unicode code points.
   * Runes('\uXXXX')            is a manual Unicode representation.
   * String.fromCharCode()      converts a Unicode number to a character.
   * String.fromCharCodes()     converts a rune array to full text.
   */
  print(
    "===================================================================================",
  );

  print("Simple Program that loop over each character in a string");

  String str = "Hello ♥ 🔥";

  str.runes.forEach((rune) {
    // Convert the rune to a character and print it
    String char = String.fromCharCode(rune);
    print('Unicode: $char -> $rune');
  });
  // or using for loop:
  print(
    "===================================================================================",
  );
  for (var rune in str.runes) {
    // Convert the rune to a character and print it
    String char = String.fromCharCode(rune);
    print('Unicode: $char -> $rune');
  }
}

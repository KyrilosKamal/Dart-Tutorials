void main(){
  /**
   * In Dart, the RegExp class is used to support regular expressions, powerful tools for matching and processing text based on specific patterns.
   * RegExp in Dart supports the same syntax and expressions as JavaScript, and includes options for adjusting case sensitivity, multiline support, and enabling Unicode and the dotAll attribute to make the dot (.) match line jump characters.
   * You can use the hasMatch(), firstMatch(), allMatches(), and stringMatch() functions to test for patterns within text and extract the results.
   */

  RegExp regExp = RegExp(
  r'^[a-zA-Z0-9]+$',     // نمط: أحرف وأرقام فقط
  caseSensitive: true,   // حساس لحالة الأحرف
  multiLine: false,      // عدم المطابقة عبر أكثر من سطر
  unicode: false,        // غير مفعّل لـ Unicode
  dotAll: false          // النقطة لا تطابق \n
);
bool isAlphanumeric = regExp.hasMatch('Dart123'); // true
print(isAlphanumeric); // true
  //2- Main functions
  
  //only Numbers
  var digits = RegExp(r'^\d+$');
  print(digits.hasMatch('12345'));    // true
  print(digits.hasMatch('123a5'));    // false
  
  //b. Extract words
  var wordExp = RegExp(r'\w+');
  var text = 'Parse my string';
  for (var m in wordExp.allMatches(text)) {
    print(m[0]);  // Parse, my, string
  }// C. HEX colors
  var hexColor = RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');
  print(hexColor.hasMatch('#FF5722')); // true

/*
| Element                   | Description                                                                                       |
|---------------------------|---------------------------------------------------------------------------------------------------|
| RegExp(pattern, …)        | Creates a regex with options: caseSensitive, multiLine, unicode, dotAll.                          |
| hasMatch(input)           | Returns true/false if at least one match is found.                                                |
| firstMatch(input)         | Returns the first match as RegExpMatch? or null.                                                   |
| allMatches(input)         | Returns all matches as Iterable<RegExpMatch>.                                                      |
| stringMatch(input)        | Returns the first matching substring as String? or null.                                           |
| Common Examples           | Digits only (r'^\d+$'), word extraction (r'\w+'), HEX colors (r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'). |
*/
}
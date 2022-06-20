import 'package:flutter_test/flutter_test.dart';
import 'package:spelling_number/spelling_number.dart';

void main() {
  test(
      'Run 2 tests the first convert number to words the second convert money number to words',
      () {
    expect(
        SpellingNumber(
          lang: 'en',
          digitsLengthW2F: 2,
          decimalSeperator: "and",
        ).convert(132.21),
        "one hundred and thirty-two  and twenty-one");

    expect(
        SpellingNumber(
          lang: 'en',
          wholesUnit: "dollar",
          fractionUnit: "cent",
          digitsLengthW2F: 2,
          decimalSeperator: "and",
        ).convert(1123000530.12),
        "one billion one hundred twenty-three million five hundred and thirty dollar and twelve cent");
  });
}

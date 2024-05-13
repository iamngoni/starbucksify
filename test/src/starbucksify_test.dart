// ignore_for_file: prefer_const_constructors
import 'package:starbucksify/starbucksify.dart';
import 'package:test/test.dart';

void main() {
  group('Starbucksify', () {
    test('starbucksify', () {
      expect(Starbucksify.starbucksify('Hello'), 'Hallu');
      expect(Starbucksify.starbucksify('World'), 'Wurld');
    });
  });
}

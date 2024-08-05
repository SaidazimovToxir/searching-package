import 'package:searching_algoritm/src/searching_algoritm_base.dart';
import 'package:test/test.dart';

void main() {
  group('SearchAlgorithmUz', () {
    final list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];

    test('linearSearch finds the correct index', () {
      final result = SearchAlgorithmUz.linearSearch(list, 7);
      expect(result['index'], 3);
    });

    test('linearSearch returns -1 for element not in list', () {
      final result = SearchAlgorithmUz.linearSearch(list, 100);
      expect(result['index'], -1);
    });

    test('binarySearch finds the correct index', () {
      final result = SearchAlgorithmUz.binarySearch(list, 7);
      expect(result['index'], 3);
    });

    test('binarySearch returns -1 for element not in list', () {
      final result = SearchAlgorithmUz.binarySearch(list, 100);
      expect(result['index'], -1);
    });

    test('jumpSearch finds the correct index', () {
      final result = SearchAlgorithmUz.jumpSearch(list, 7);
      expect(result['index'], 3);
    });

    test('jumpSearch returns -1 for element not in list', () {
      final result = SearchAlgorithmUz.jumpSearch(list, 100);
      expect(result['index'], -1);
    });
  });
}

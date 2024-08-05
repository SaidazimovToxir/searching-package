import 'package:searching_algoritm/searching_algoritm.dart';

void main() {
  // List of integers
  List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  // List of strings
  List<String> stringList = ['apple', 'banana', 'cherry', 'date'];

  // Linear Search
  var linearSearchResult = SearchAlgorithmUz.linearSearch(intList, 7);
  print(
      'Linear Search - Index: ${linearSearchResult['index']}, Time: ${linearSearchResult['time']} microseconds');

  // Binary Search
  var binarySearchResult = SearchAlgorithmUz.binarySearch(intList, 7);
  print(
      'Binary Search - Index: ${binarySearchResult['index']}, Time: ${binarySearchResult['time']} microseconds');

  // Jump Search
  var jumpSearchResult = SearchAlgorithmUz.jumpSearch(intList, 7);
  print(
      'Jump Search - Index: ${jumpSearchResult['index']}, Time: ${jumpSearchResult['time']} microseconds');

  // Linear Search with Strings
  var linearSearchStringResult =
      SearchAlgorithmUz.linearSearch(stringList, 'cherry');
  print(
      'Linear Search (String) - Index: ${linearSearchStringResult['index']}, Time: ${linearSearchStringResult['time']} microseconds');
}

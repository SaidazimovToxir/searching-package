import 'dart:math';
import 'dart:core';

class SearchAlgorithms {
  // Linear Search
  static Map<String, dynamic> linearSearch<T>(List<T> list, T element) {
    final stopwatch = Stopwatch()..start();
    for (int i = 0; i < list.length; i++) {
      if (list[i] == element) {
        stopwatch.stop();
        return {'index': i, 'time': stopwatch.elapsedMicroseconds};
      }
    }
    stopwatch.stop();
    return {'index': -1, 'time': stopwatch.elapsedMicroseconds};
  }

  // Binary Search
  static Map<String, dynamic> binarySearch(List<int> list, int element) {
    final stopwatch = Stopwatch()..start();
    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int middle = left + (right - left) ~/ 2;

      if (list[middle] == element) {
        stopwatch.stop();
        return {'index': middle, 'time': stopwatch.elapsedMicroseconds};
      }

      if (list[middle] < element) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }
    stopwatch.stop();
    return {'index': -1, 'time': stopwatch.elapsedMicroseconds};
  }

  // Jump Search
  static Map<String, dynamic> jumpSearch(List<int> list, int element) {
    final stopwatch = Stopwatch()..start();
    int length = list.length;
    int step = sqrt(length).toInt();
    int prev = 0;

    while (list[min(step, length) - 1] < element) {
      prev = step;
      step += sqrt(length).toInt();
      if (prev >= length) {
        stopwatch.stop();
        return {'index': -1, 'time': stopwatch.elapsedMicroseconds};
      }
    }

    for (int i = prev; i < min(step, length); i++) {
      if (list[i] == element) {
        stopwatch.stop();
        return {'index': i, 'time': stopwatch.elapsedMicroseconds};
      }
    }
    stopwatch.stop();
    return {'index': -1, 'time': stopwatch.elapsedMicroseconds};
  }
}

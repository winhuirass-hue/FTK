import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';

void main() {
  test('public API exports toolkit types', () {
    const gap = ToolkitGap(8);
    expect(gap.size, 8);
  });
}

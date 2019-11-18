import 'package:test/test.dart';

import 'main.dart';
main(){
  test('Shiritori', (){
    expect(Shiritori().play('hello'),true);
    expect(Shiritori().words.isEmpty, true);
  });}
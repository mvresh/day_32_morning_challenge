import 'package:test/test.dart';

import 'main.dart';

main() {
  test('Shiritori', () {
    Shiritori player = Shiritori();
    expect(player.play('hello'), true);
    expect(player.play('ohey_there'), true);
    expect(player.play('ehey_there'), true);
    expect(player.play('bye'), false);
    expect(
        player.play('there'), false); // as the game is over and not restarted

    expect(player.restart(), 'game restarted');

    expect(player.play('there'), true);
  });
}

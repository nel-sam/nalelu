import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nalelu/widgets/game/ngame.dart';

void main() {
  testWidgets('loads the first mini-game before mounting', (tester) async {
    final game = NGame();
    final world = World();

    expect(game.currentWorld, isNull);
    await game.loadMiniGame(world);
    await tester.pumpWidget(GameWidget(game: game));
    await tester.pump();

    expect(game.currentWorld, same(world));
    expect(game.children, contains(world));
    expect(tester.takeException(), isNull);
  });

  testWidgets('replaces the previous mini-game', (tester) async {
    final game = NGame();
    final firstWorld = World();
    final nextWorld = World();

    await game.loadMiniGame(firstWorld);
    await tester.pumpWidget(GameWidget(game: game));
    await tester.pump();

    await game.loadMiniGame(nextWorld);
    await tester.pump();

    expect(game.currentWorld, same(nextWorld));
    expect(game.children, contains(nextWorld));
    expect(game.children, isNot(contains(firstWorld)));
    expect(tester.takeException(), isNull);
  });
}

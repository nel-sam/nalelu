import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';

class NGame extends FlameGame
    with MultiTouchTapDetector, HasCollisionDetection {
  World? currentWorld;

  Future<void> onLoad() async {
    await super.onLoad();
  }

  Future<void> loadMiniGame(World world) async {
    if (currentWorld != null) {
      remove(currentWorld!);
    }

    currentWorld = world;
    add(currentWorld!);
  }
}

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';
import 'package:nalelu/widgets/game/ngame.dart';

class HiraganaWorld extends World with HasGameReference<NGame> {
  late ParallaxComponent waterLayer;
  static const defaultWaterLayerSpeed = 50.0;

  // Load assets and add the minigame's components here
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    // just make water a blue rectangle for now
    waterLayer = ParallaxComponent(
      parallax: await Parallax.load(
        [
          ParallaxImageData('game/minigame1/water.png'),
        ],
        baseVelocity: Vector2(0, defaultWaterLayerSpeed),
        repeat: ImageRepeat.repeat,
        fill: LayerFill.width,
        alignment: Alignment.topCenter,
      ),
    );

    // waterLayer = await loadParallaxComponent(
    //   [ParallaxImageData('water.png')],
    //   baseVelocity: Vector2(0, defaultWaterLayerSpeed),
    //   repeat: ImageRepeat.repeat,
    //   fill: LayerFill.width,
    // );

    add(waterLayer);
  }

  // This updates the world each frame. Game logic goes here.
  @override
  void update(double dt) {
    super.update(dt);
  }
}

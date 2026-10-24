import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:nalelu/widgets/game/minigame1-hiragana.dart';
import 'package:nalelu/widgets/game/ngame.dart';

class NGameContainer extends StatelessWidget {
  late NGame game;
  NGame getGame() => game;

  NGameContainer({Key? key}) : super(key: key) {
    game = NGame();
    game.loadMiniGame(HiraganaWorld());
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: game);
  }
}

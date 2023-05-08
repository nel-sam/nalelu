import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/menus/main_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_round_button.dart';
import 'package:nrs_flutter_lib/widgets/n_text_link.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

Future setFirstTimeSetting() async {
  final preferences = (await SharedPreferences.getInstance());
  preferences.setBool("isFirstTime", false);
}

class KeyboardMessage extends StatelessWidget {
  final String androidUrl =
      "https://support.google.com/gboard/answer/7068494?hl=en&co=GENIE.Platform%3DAndroid";
  final String iosUrl =
      "https://support.apple.com/guide/iphone/add-or-change-keyboards-iph73b71eb/ios#:~:text=Go%20to%20Settings%20%3E%20General%20%3E%20Keyboard%20%3E%20Keyboards.,alternative%20layout%20from%20the%20list.";
  const KeyboardMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAndroid;

    try {
      isAndroid = Platform.isAndroid;
    } catch (e) {
      isAndroid = false;
    }

    final uri = isAndroid ? Uri(path: androidUrl) : Uri(path: iosUrl);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/banners/slant_keyboard.png"),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      NA.t('welcome_to_nalelu'),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300),
                    child: Text(
                      NA.t('japanese_keyboard_needed'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: NRoundButton(
                      title: NA.t('instructions'),
                      onPressed: () async {
                        await canLaunchUrl(uri)
                            ? await launchUrl(uri)
                            : throw 'Could not launch $uri';
                      },
                    ),
                  ),
                ],
              ),
              NTextLink(
                title: NA.t('continue'),
                onPressed: () async {
                  await setFirstTimeSetting();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu()),
                  );
                },
              )
            ]),
      ),
    );
  }
}

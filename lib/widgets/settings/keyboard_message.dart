import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nalelu/widgets/menus/main_menu.dart';
import 'package:nrs_flutter_lib/widgets/n_round_button.dart';
import 'package:nrs_flutter_lib/widgets/n_text_link.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

setFirstTimeSetting() async {
  final preferences = (await SharedPreferences.getInstance());
  preferences.setBool("isFirstTime", false);
}

class KeyboardMessage extends StatelessWidget {
  const KeyboardMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> url = [
      "https://support.google.com/gboard/answer/7068494?hl=en&co=GENIE.Platform%3DAndroid",
      "https://support.apple.com/guide/iphone/add-or-change-keyboards-iph73b71eb/ios#:~:text=Go%20to%20Settings%20%3E%20General%20%3E%20Keyboard%20%3E%20Keyboards.,alternative%20layout%20from%20the%20list."
    ];
    bool isAndroid;

    try {
      isAndroid = Platform.isAndroid;
    } catch (e) {
      isAndroid = false;
    }

    final uri = isAndroid ? Uri(path: url[0]) : Uri(path: url[1]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: FutureBuilder(
        future: setFirstTimeSetting(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      "Welcome to nalelu",
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleLarge!.fontSize),
                    ),
                    Image(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/banners/keyboard.png"),
                    ),
                    Text(
                      "To use nalelu you'll need a Japanese keyboard installed.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: NRoundButton(
                        title: "Instructions",
                        onPressed: () async {
                          await canLaunchUrl(uri)
                              ? await launchUrl(uri)
                              : throw 'Could not launch $uri';
                        },
                      ),
                    ),
                    NTextLink(
                      title: "Continue",
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainMenu()),
                        )
                      },
                    )
                  ])),
            );
          } else {
            return Container();
          }
        },
      )),
    );
  }
}

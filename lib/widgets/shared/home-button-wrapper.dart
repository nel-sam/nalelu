import 'package:flutter/material.dart';
import 'package:nareru/hd-helpers.dart';
import 'package:nrs_flutter_lib/widgets/n_home_button.dart';

class HomeButtonWrapper extends StatelessWidget {
  final bool isActive;

  const HomeButtonWrapper({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = HD.t('home');
    return NHomeButton(
      homeLabel: text,
      isActive: isActive,
    );
  }
}

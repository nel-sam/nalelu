import 'package:flutter/material.dart';
import 'package:nareru/widgets/suuji-exercise/number-chart.dart';
import '../../hd-helpers.dart';

class NumberChartButton extends StatelessWidget {
  const NumberChartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NumberChart()),
            );
          },
          child: Text(
            HD.t('numberChart'),
          )),
    );
  }
}

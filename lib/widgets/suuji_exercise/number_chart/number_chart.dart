import 'package:material_ui/material_ui.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/widgets/shared/ad_card.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart/native_number_chart.dart';
import 'package:nalelu/widgets/suuji_exercise/number_chart/sino_number_chart.dart';
import 'package:nrs_flutter_lib/nrs_flutter_lib.dart';
import 'package:nrs_flutter_lib/widgets/n_sub_header.dart';

class NumberChart extends StatelessWidget {
  const NumberChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Nrs.NrsAppBar(title: NA.t('numberChart'), context: context),
      body: Column(
        children: [
          NSubHeader(NA.t('nativeNumbers')),
          const Flexible(child: NativeNumberChart()),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: NSubHeader(NA.t('sinoNumbers')),
          ),
          const Flexible(child: SinoNumberChart()),
          const AdCard(),
        ],
      ),
    );
  }
}

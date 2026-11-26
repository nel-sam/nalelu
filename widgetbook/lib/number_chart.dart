import 'package:nalelu/widgets/suuji_exercise/number_chart/number_chart.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:material_ui/material_ui.dart';

@widgetbook.UseCase(name: 'Default', type: NumberChart)
Widget buildCoachFeedbackUseCase(BuildContext context) {
  return NumberChart();
}

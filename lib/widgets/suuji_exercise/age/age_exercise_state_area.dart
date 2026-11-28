import 'package:material_ui/material_ui.dart';
import 'package:nalelu/na_helpers.dart';
import 'package:nalelu/state/suuji/age/age_exercise_state.dart';
import 'package:nalelu/widgets/shared/na_free_form_entry_wrapper.dart';
import 'package:nrs_flutter_lib/widgets/n_free_form_entry.dart';

class AgeExerciseStateArea extends StatefulWidget {
  final AgeExerciseState state;

  const AgeExerciseStateArea({
    super.key,
    required this.state,
  });

  @override
  State<AgeExerciseStateArea> createState() => _MyAgeExerciseStateAreaState();
}

class _MyAgeExerciseStateAreaState extends State<AgeExerciseStateArea> {
  @override
  Widget build(BuildContext context) {
    return NaFreeFormEntryWrapper(
      showMaxLength: false,
      widthType: NFreeFormWidths.half,
      hintValue: NA.t('age'),
      onChanged: (String newValue) {
        widget.state.updateAge(newValue);
      },
      initialValue: widget.state.userInput,
      correctValues: widget.state.correctAnswers,
      onCorrect: () {
        setState(() {});
      },
    );
  }
}

import 'package:nalelu/widgets/login_page.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:material_ui/material_ui.dart';

@widgetbook.UseCase(name: 'Default', type: LoginPage)
Widget buildCoachFeedbackUseCase(BuildContext context) {
  return LoginPage(
    titleText: 'Track your prs',
    detailsText: 'Sign in to save your Japanese progress and get personalized tips from your Coach.',
  );
}

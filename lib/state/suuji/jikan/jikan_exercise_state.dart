class JikanExerciseState {
  List<String> correctHours;
  String userHour = '';
  List<String> correctMins;
  String userMin = '';
  List<String> correctSecs;
  String userSec = '';
  String hour;
  String min;
  String sec;

  JikanExerciseState({
    required this.hour,
    required this.min,
    required this.sec,
    required this.correctHours,
    required this.correctMins,
    required this.correctSecs,
  });

  void clear() {
    userHour = '';
    userMin = '';
    userSec = '';
  }

  bool getIsCorrect() {
    return correctHours.contains(userHour) &&
        correctMins.contains(userMin) &&
        correctSecs.contains(userSec);
  }

  bool getIsHourCorrect() {
    return correctHours.contains(userHour);
  }

  bool getIsSecCorrect() {
    return correctSecs.contains(userSec);
  }

  bool getIsMinCorrect() {
    return correctMins.contains(userMin);
  }

  void updateHour(String input) {
    userHour = input;
  }

  void updateMin(String input) {
    userMin = input;
  }

  void updateSec(String input) {
    userSec = input;
  }
}

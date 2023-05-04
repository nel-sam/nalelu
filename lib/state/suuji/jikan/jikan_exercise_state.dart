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

  clear() {
    this.userHour = '';
    this.userMin = '';
    this.userSec = '';
  }

  bool getIsCorrect() {
    return this.correctHours.contains(this.userHour) &&
        this.correctMins.contains(this.userMin) &&
        this.correctSecs.contains(this.userSec);
  }

  bool getIsHourCorrect() {
    return this.correctHours.contains(this.userHour);
  }

  bool getIsSecCorrect() {
    return this.correctSecs.contains(this.userSec);
  }

  bool getIsMinCorrect() {
    return this.correctMins.contains(this.userMin);
  }

  updateHour(String input) {
    this.userHour = input;
  }

  updateMin(String input) {
    this.userMin = input;
  }

  updateSec(String input) {
    this.userSec = input;
  }
}

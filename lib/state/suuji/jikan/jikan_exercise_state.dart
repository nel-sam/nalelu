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

  bool getIsCorrect() {
    return this.correctHours.contains(this.userHour) &&
        this.correctMins.contains(this.userMin) &&
        this.correctSecs.contains(this.userSec);
  }

  clear() {
    this.userHour = '';
    this.userMin = '';
    this.userSec = '';
  }
}

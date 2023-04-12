class JikanExerciseState {
  List<String> correctHour;
  String userHour = '';
  List<String> correctMin;
  String userMin = '';
  List<String> correctSec;
  String userSec = '';
  String hour;
  String min;
  String sec;

  JikanExerciseState({
    required this.hour,
    required this.min,
    required this.sec,
    required this.correctHour,
    required this.correctMin,
    required this.correctSec,
  });

  bool getIsCorrect() {
    return this.correctHour.contains(this.userHour) &&
        this.correctMin.contains(this.userMin) &&
        this.correctSec.contains(this.userSec);
  }

  clear() {
    this.userHour = '';
    this.userMin = '';
    this.userSec = '';
  }
}

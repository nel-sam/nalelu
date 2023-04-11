class JikanExerciseState {
  String correctHour;
  String userHour = '';
  String correctMin;
  String userMin = '';
  String correctSec;
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
    return this.userHour == this.correctHour &&
        this.userMin == this.correctMin &&
        this.userSec == this.correctSec;
  }

  clear() {
    this.userHour = '';
    this.userMin = '';
    this.userSec = '';
  }
}

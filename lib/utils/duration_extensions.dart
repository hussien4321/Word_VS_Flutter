extension DurationExtensions on Duration {
  String toMSFormat() {
    final time = inSeconds;

    final totalMinutes = (time / 60).floor();
    final totalSeconds = ((time - totalMinutes * 60)).floor();
    return '${totalMinutes < 10 ? "0" : ""}$totalMinutes : ${totalSeconds < 10 ? "0" : ""}$totalSeconds';
  }
}

class Walk {
  int duration;
  Walk({this.duration});
  factory Walk.fromJson(Map<String, dynamic> json) {
    if (json == null) return new Walk();

    return new Walk(
      duration: json['duration'],
    );
  }
}

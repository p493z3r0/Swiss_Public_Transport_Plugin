class Walk {
  int duration;
  Walk({this.duration});
  bool hasDuration(){
    return this.duration != null;
  }
  factory Walk.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      print("Tried to initializie walk with json null");
      return null;
    }else{
      print("json is: $json");
    }
    return new Walk(
      duration: json['duration'],
    );
  }
}

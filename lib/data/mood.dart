class Mood {
  String name;
  String emoji;
  String comment;

  Mood({this.name, this.emoji, this.comment});

  /// Allows to check if two objects are the same (but not identicals)
  @override
  bool operator ==(other) {
    return (other is Mood)
        && other.name == name
        && other.emoji == emoji
        && other.comment == comment;
  }

  /// Mandatory change since we change the behavior of the == operator
  /// Use BITWISE XOR operator
  @override
  int get hashCode => name.hashCode ^ emoji.hashCode ^ comment.hashCode;
}
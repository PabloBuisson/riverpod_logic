class Mood {
  String name;
  String emoji;
  String comment;

  Mood({this.name, this.emoji, this.comment});

  /// permet de vérifier si deux objets sont égaux (mais non identiques)
  @override
  bool operator ==(other) {
    return (other is Mood)
        && other.name == name
        && other.emoji == emoji
        && other.comment == comment;
  }

  /// modification obligatoire suite à la modification de l'operator ==
  /// utilise l'opérateur BITWISE XOR
  @override
  int get hashCode => name.hashCode ^ emoji.hashCode ^ comment.hashCode;

}
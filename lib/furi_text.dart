class FuriText {
  final String text;
  final String furigana;
  final bool emphasize;

  FuriText({required this.text, this.furigana = '', this.emphasize = false});
  Map<String, dynamic> toJson() {
    return {'text': text, 'furigana': furigana, 'emphasize': emphasize};
  }

  factory FuriText.fromJson(Map<String, dynamic> json) {
    return FuriText(
      text: json['text'],
      furigana: json['furigana'],
      emphasize: json['emphasize'],
    );
  }
}

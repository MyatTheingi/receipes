class Recipes {
  final String uri;
  final String label;

  Recipes({required this.uri, required this.label});

  factory Recipes.fromJson(Map<String, dynamic> json) {
    return Recipes(
      uri: json['uri'] as String,
      label: json['label'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'uri': uri, 'label': label};
  }
}

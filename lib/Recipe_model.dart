class RecipeModel {
  final String uri;
  final String label;
  final String image;
  final String source;
  final String url;
  final Map ingredients;

  RecipeModel(this.uri, this.label, this.image, this.source, this.ingredients,
      this.url);

  @override
  List<Object> get props => [uri, label, image, ingredients, source, url];
/*
  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(json['id'] as int, json['name'] as String);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }*/
}

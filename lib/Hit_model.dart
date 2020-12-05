import 'Recipe_model.dart';

class Hits {
  Recipe recipe;
  bool bookmarked;
  bool bought;

  Hits({this.recipe, this.bookmarked, this.bought});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe =
        json['recipe'] != null ? new Recipe.fromJson(json['recipe']) : null;
    bookmarked = json['bookmarked'];
    bought = json['bought'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipe != null) {
      data['recipe'] = this.recipe.toJson();
    }
    data['bookmarked'] = this.bookmarked;
    data['bought'] = this.bought;
    return data;
  }
}

import 'Ingredients_model.dart';
import 'TotalNutrients_model.dart';

class Recipe {
  String uri;
  String label;
  String image;
  String source;
  String url;
  String shareAs;
  double yield;
  List<String> dietLabels;
  List<String> healthLabels;
  List<String> cautions;
  List<String> ingredientLines;
  List<Ingredients> ingredients;
  double calories;
  double totalWeight;
  double totalTime;
  TotalNutrients totalNutrients;
  TotalNutrients totalDaily;

  Recipe(
      {this.uri,
      this.label,
      this.image,
      this.source,
      this.url,
      this.shareAs,
      this.yield,
      this.dietLabels,
      this.healthLabels,
      this.cautions,
      this.ingredientLines,
      this.ingredients,
      this.calories,
      this.totalWeight,
      this.totalTime,
      this.totalNutrients,
      this.totalDaily});

  Recipe.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
    image = json['image'];
    source = json['source'];
    url = json['url'];
    shareAs = json['shareAs'];
    yield = json['yield'];
    dietLabels = json['dietLabels'].cast<String>();
    healthLabels = json['healthLabels'].cast<String>();
    cautions = json['cautions'].cast<String>();
    ingredientLines = json['ingredientLines'].cast<String>();
    ingredients = json['ingredients'].cast<Ingredients>();
    calories = json['calories'];
    totalWeight = json['totalWeight'];
    totalTime = json['totalTime'];
    totalNutrients = json['totalNutrients'] != null
        ? new TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    totalDaily = json['totalDaily'] != null
        ? new TotalNutrients.fromJson(json['totalDaily'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['label'] = this.label;
    data['image'] = this.image;
    data['source'] = this.source;
    data['url'] = this.url;
    data['shareAs'] = this.shareAs;
    data['yield'] = this.yield;
    data['dietLabels'] = this.dietLabels;
    data['healthLabels'] = this.healthLabels;
    data['cautions'] = this.cautions;
    data['ingredientLines'] = this.ingredientLines;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients.map((v) => v.toJson()).toList();
    }
    data['calories'] = this.calories;
    data['totalWeight'] = this.totalWeight;
    data['totalTime'] = this.totalTime;
    if (this.totalNutrients != null) {
      data['totalNutrients'] = this.totalNutrients.toJson();
    }
    if (this.totalDaily != null) {
      data['totalDaily'] = this.totalDaily.toJson();
    }
    return data;
  }
}

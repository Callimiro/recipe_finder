class Ingredients {
  String text;
  double weight;
  String image;

  Ingredients({this.text, this.weight, this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    weight = json['weight'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['weight'] = this.weight;
    data['image'] = this.image;
    return data;
  }
}

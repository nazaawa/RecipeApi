class Recipe {
  String name = "";
  String images = "";
  double rating = 0.0;
  String totalTime = "";

  Recipe(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});
  Recipe.fromJson(dynamic json) {
    name = json["name"];
    images = json["images"][0]['hostedLargeUrl'];
    rating = json["rating"];
    totalTime = json["totalTime"];
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_api/models/recipe.dart';

class RecipeApi {
/* var req = unirest("GET", "https://yummly2.p.rapidapi.com/feeds/list");

req.query({
	"start": "0",
	"limit": "18",
	"tag": "list.recipe.popular"
});

req.headers({
	"x-rapidapi-key": "551aef55dfmsh0db32a33a5e694fp10377ajsn4f6e20202946",
	"x-rapidapi-host": "yummly2.p.rapidapi.com",
	"useQueryString": true
}); */

  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", '/feeds/list',
        {"start": "0", "limit": "18", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "551aef55dfmsh0db32a33a5e694fp10377ajsn4f6e20202946",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true",
    });
    Map data = jsonDecode(response.body);
    List _temp = [];
  for (var i in data['feed']) {
    _temp.add(i["content"]["details"]);
  }
return Recipe.recipesFromSnapshot(_temp);
  }
}

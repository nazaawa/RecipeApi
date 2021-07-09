import 'package:flutter/material.dart';
import 'package:recipe_api/views/recipe_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          Icon(Icons.restaurant_menu),
          SizedBox(width:10),
          Text('Food Recipe')
        ],)
      ),
      body: RecipeCard(title: "Ma recette", cookTime: "30 min" , rating: "4.3", thumbnailUrl: "https://lh3.googleusercontent.com/GrQx2bXJfqWsY5J9YVQdjixy0Mi675_bCLmV10_jSPJeVLLBgHuBk3or8gb95lsMYTmZMiYT8omiZYdB_64crHtCxVdL8dEpKd1m"),
    );
  }
}
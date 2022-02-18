import 'package:flutter/material.dart';
import 'recipedetails.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
        cardColor: const Color.fromARGB(255, 213, 221, 128),
        scaffoldBackgroundColor: const Color.fromARGB(255, 213, 221, 128));
    return MaterialApp(
      title: 'Reciepe Calculator',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
              primary: const Color.fromARGB(255, 127, 161, 95),
              secondary: const Color.fromARGB(255, 218, 126, 126))),
      home: const MyHomePage(title: 'Recipe Calulator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Color.fromARGB(255, 250, 203, 63),
              fontWeight: FontWeight.bold),
        ), // added style),
      ),
      body: SafeArea(
          minimum: const EdgeInsets.fromLTRB(15, 2, 15, 2),
          child: ListView.builder(
              itemCount: Recipe.data.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RecipeDetails(recipe: Recipe.data[index]);
                    }));
                  },
                  child: buildRecipeCard(Recipe.data[index]),
                );
              })),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Column(children: <Widget>[
      ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Card(
              elevation: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image(
                  width: 875 > MediaQuery.of(context).size.width
                      ? MediaQuery.of(context).size.width * 0.8
                      : MediaQuery.of(context).size.width * 0.65,
                  height: 875 > MediaQuery.of(context).size.width
                      ? MediaQuery.of(context).size.height * 0.4
                      : MediaQuery.of(context).size.height * 0.6,
                  fit: BoxFit.fill,
                  image: AssetImage(recipe.imageurl),
                ), //styled
              ))),

      Text(
        recipe.name,
        textScaleFactor: 875 > MediaQuery.of(context).size.width ? 1.25 : 1.75,
        style: const TextStyle(color: Colors.blueGrey),
      ), //cliprrect for rounded border images added
    ]);
  }
}

import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  State<RecipeDetails> createState() => _RecipeDetails();
}

class _RecipeDetails extends State<RecipeDetails> {
  int _servVal = 1;
  int _flag = 0;
  @override
  Widget build(BuildContext context) {
    if (_flag == 0) {
      _servVal = widget.recipe.servings;
      _flag = 1;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.recipe.name,
          style: const TextStyle(
              color: Color.fromARGB(255, 250, 203, 63),
              fontWeight: FontWeight.bold),
        ), // added style
      ),
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image(
                    width: 875 > MediaQuery.of(context).size.width
                        ? MediaQuery.of(context).size.width * 0.8
                        : MediaQuery.of(context).size.width * 0.65,
                    height: 875 > MediaQuery.of(context).size.width
                        ? MediaQuery.of(context).size.height * 0.4
                        : MediaQuery.of(context).size.height * 0.6,
                    fit: BoxFit.fill,
                    image: AssetImage(widget.recipe.imageurl))),
            Slider(
                //start
                autofocus: true,
                label: '$_servVal servings',
                inactiveColor: const Color.fromARGB(255, 75, 53, 53),
                activeColor: const Color.fromARGB(255, 235, 159, 60),
                //stop

                min: 1,
                max: 100,
                divisions: 100,
                value: _servVal.toDouble(),
                onChanged: (newValue) {
                  setState(() {
                    _servVal = newValue.round();
                  });
                }),
            Text(
              'Ingredients for $_servVal servings',
              textScaleFactor: 1.5,
              style: const TextStyle(
                  color: Color.fromARGB(200, 72, 114, 134),
                  fontWeight: FontWeight.bold),
            ), //old --> //Text(widget.recipe.name),
            Expanded(
                child: ListView.builder(
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      bool showamount =
                          ((widget.recipe.ingredients[index].amount *
                                      _servVal /
                                      widget.recipe.servings)
                                  .toStringAsFixed(1) !=
                              '0.0');
                      if (showamount == false) {
                        return Text(
                          '  '
                          '${widget.recipe.ingredients[index].item}  '
                          '${widget.recipe.ingredients[index].additional}  '
                          '[ to Taste ]',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 116, 106, 106),
                          ),
                        );
                      } else {
                        return Text(
                          '  ${(widget.recipe.ingredients[index].amount * _servVal / widget.recipe.servings).toStringAsFixed(1)}  '
                          '${widget.recipe.ingredients[index].unit}  '
                          '${widget.recipe.ingredients[index].item}  '
                          '${widget.recipe.ingredients[index].additional}  ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 116, 106, 106),
                          ),
                        );
                      } //added style
                    }))
          ],
        ),
      ),
    );
  }
}

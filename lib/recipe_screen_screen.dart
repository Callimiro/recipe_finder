import 'package:flutter/material.dart';

class RecipeScreenScreen extends StatefulWidget {
  const RecipeScreenScreen({
    Key key,
    @required RecipeScreenBloc recipeScreenBloc,
  })  : _recipeScreenBloc = recipeScreenBloc,
        super(key: key);

  final RecipeScreenBloc _recipeScreenBloc;

  @override
  RecipeScreenScreenState createState() {
    return RecipeScreenScreenState();
  }
}

class RecipeScreenBloc {}

class RecipeScreenScreenState extends State<RecipeScreenScreen> {
  RecipeScreenScreenState();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 20,
          ),
          Card(
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(29))),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: Image.asset(
                        'lib/assets/images/food.png',
                      ),
                    )),
                ListTile(
                  title: const Text(
                    'Card title 1',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Ingredients:'),
                  subtitle: Text(
                    'Secondary Text dary Text Sedary Text Secondary Text',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
                ListTile(
                  title: const Text('Description:'),
                  subtitle: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Lorem ',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

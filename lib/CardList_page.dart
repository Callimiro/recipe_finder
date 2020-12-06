import 'package:flutter/material.dart';
import 'package:recipe_finder/Hit_model.dart';
import 'package:recipe_finder/recipe_screen_screen.dart';

class CardListPage extends StatefulWidget {
  static const String routeName = '/cardList';
  final List<Hits> hits;
  const CardListPage({Key key, this.hits}) : super(key: key);

  @override
  _CardListPageState createState() => _CardListPageState(hits);
}

class _CardListPageState extends State<CardListPage> {
  final List<Hits> hits;

  _CardListPageState(this.hits);

  Widget _buildCard(int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RecipeScreenScreen(recipeScreenBloc: null)));
      },
      child: Card(
        margin: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(29))),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Calories:  ' + hits[index].recipe.calories.toString(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Ingredients:  ' +
                            hits[index].recipe.ingredients.length.toString(),
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ],
                )),
            Image.network(hits[index].recipe.image),
            ListTile(
              title: Text(
                hits[index].recipe.label,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                'Secondary Text',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: hits.length,
        itemBuilder: (context, index) {
          return _buildCard(index);
        });
  }
}

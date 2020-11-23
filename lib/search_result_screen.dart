import 'package:flutter/material.dart';
import 'package:recipe_finder/recipe_screen_screen.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({
    Key key,
    @required SearchResultBloc searchResultBloc,
  })  : _searchResultBloc = searchResultBloc,
        super(key: key);

  final SearchResultBloc _searchResultBloc;

  @override
  SearchResultScreenState createState() {
    return SearchResultScreenState();
  }
}

class SearchResultBloc {}

class SearchResultScreenState extends State<SearchResultScreen> {
  SearchResultScreenState();

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
      //backgroundColor: Color.fromRGBO(250, 74, 12, 1),
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),

      body: ListView(
        children: [
          Row(
            children: [
              RawMaterialButton(
                onPressed: () {},
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
                elevation: 2.0,
                fillColor: Color.fromRGBO(250, 74, 12, 1),
                //fillColor: Color.fromRGBO(111, 207, 151, 1),
                child: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: Text(
                  'The Searched Text',
                  style: TextStyle(
                      //color: Colors.white,
                      color: Color.fromRGBO(250, 74, 12, 1),
                      fontSize: 32,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Container(
            height: 20,
          ),
          GestureDetector(
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
                              'Calories:  560',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Ingredients:  8',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ],
                      )),
                  Image.asset('lib/assets/images/food.png'),
                  ListTile(
                    title: const Text(
                      'Card title 1',
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
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(200),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Calories:'),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        elevation: 2.0,
                        fillColor: Color.fromRGBO(111, 207, 151, 1),
                        child: Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

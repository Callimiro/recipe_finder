import 'package:flutter/material.dart';
import 'package:recipe_finder/CardList_page.dart';
import 'package:recipe_finder/recipe_screen_screen.dart';
import 'Hit_model.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({
    Key key,
    @required SearchResultBloc searchResultBloc,
    @required Future<List<Hits>> hits,
    @required String searchedRecipe,
  })  : _searchResultBloc = searchResultBloc,
        _hits = hits,
        _searchedRecipe = searchedRecipe,
        super(key: key);

  final SearchResultBloc _searchResultBloc;
  final Future<List<Hits>> _hits;
  final String _searchedRecipe;

  @override
  SearchResultScreenState createState() {
    return SearchResultScreenState(_searchedRecipe, _hits);
  }
}

class SearchResultBloc {}

class SearchResultScreenState extends State<SearchResultScreen> {
  SearchResultScreenState(this.searchedText, this.hits);
  final String searchedText;
  final Future<List<Hits>> hits;

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
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        //backgroundColor: Color.fromRGBO(250, 74, 12, 1),

        body: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      padding: EdgeInsets.all(15.0),

                      shape: CircleBorder(),
                      elevation: 2.0,
                      fillColor: Color.fromRGBO(250, 74, 12, 1),
                      //fillColor: Color.fromRGBO(111, 207, 151, 1),
                      child: Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Text(
                        searchedText,
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
                FutureBuilder<List<Hits>>(
                  future: hits,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print(snapshot.error);
                    return snapshot.hasData
                        ? new CardListPage(hits: snapshot.data)
                        : Center(child: CircularProgressIndicator());
                  },
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';

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
      backgroundColor: Color.fromRGBO(250, 74, 12, 1),
      body: ListView(
        children: [
          Row(
            children: [
              RawMaterialButton(
                onPressed: () {},
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
                elevation: 2.0,
                fillColor: Color.fromRGBO(111, 207, 151, 1),
                child: Icon(Icons.arrow_back),
              ),
              Expanded(
                child: Text(
                  'The Searched Text',
                  style: TextStyle(
                      color: Colors.white,
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
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 1'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
                Image.asset('images/food.png'),
              ],
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

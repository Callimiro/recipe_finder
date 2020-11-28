import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:recipe_finder/advanced_search_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_finder/search_result_screen.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Future<http.Response> searcheByName(String recipeName) {
      return http.get("https://api.edamam.com/search?q=" +
          recipeName +
          "&app_id=bd7ed852&app_key=cab16ce1c8007b3fb8bef286f306426b");
      print('this will never be executed');
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Flexible(
              flex: 23,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Flexible(flex: 25, child: Container()),
                    Flexible(
                        flex: 50,
                        fit: FlexFit.tight,
                        child: Column(
                          children: <Widget>[
                            RichText(
                                text: TextSpan(
                                    text: 'RECIPE',
                                    style: GoogleFonts.varelaRound(
                                      color: Colors.black,
                                      fontSize: 28,
                                    ))),
                            RichText(
                                text: TextSpan(
                                    text: 'FINDER',
                                    style: GoogleFonts.varelaRound(
                                      color: Color.fromRGBO(250, 74, 12, 1),
                                      fontSize: 28,
                                    )))
                          ],
                        )),
                    Flexible(flex: 25, child: Container())
                  ],
                ),
              )),
          Flexible(
              flex: 6,
              child: Container(
                margin: EdgeInsets.only(
                    left: screenWidth * 6.8 / 100,
                    right: screenWidth * 6.8 / 100),
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: Color.fromRGBO(224, 224, 224, 1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(29))),
                      hintText: 'Find your recipe'),
                ),
              )),
          Flexible(
              flex: 71,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(flex: 20, child: Container()),
                    Flexible(
                        flex: 40,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  left: screenWidth / 3,
                                  right: screenWidth / 3),
                              child: RaisedButton(
                                  child: Text(
                                    "FIND RECIPE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 15, bottom: 15, left: 10, right: 10),
                                  color: Color.fromRGBO(250, 74, 12, 1),
                                  onPressed: () {
                                    var response = searcheByName("");
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SearchResultScreen(
                                                    searchResultBloc: null)));
                                  }),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: screenWidth / 3,
                                  right: screenWidth / 3,
                                  top: screenHeight * 5 / 100),
                              child: RichText(
                                text: TextSpan(
                                    text: "Advanced Options",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AdvancedSearchScreen(
                                                        advancedSearchBloc:
                                                            null)));
                                      }),
                              ),
                            )
                          ],
                        )),
                    Flexible(flex: 40, child: Container())
                  ],
                ),
              ))
        ],
      )),
    );
  }
}

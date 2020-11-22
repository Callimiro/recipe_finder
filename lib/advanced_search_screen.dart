import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:recipe_finder/main.dart';
import 'package:recipe_finder/search_result_screen.dart';

class AdvancedSearchScreen extends StatefulWidget {
  const AdvancedSearchScreen({
    Key key,
    @required AdvancedSearchBloc advancedSearchBloc,
  })  : _advancedSearchBloc = advancedSearchBloc,
        super(key: key);

  final AdvancedSearchBloc _advancedSearchBloc;

  @override
  AdvancedSearchScreenState createState() {
    return AdvancedSearchScreenState();
  }
}

class AdvancedSearchBloc {}

class AdvancedSearchScreenState extends State<AdvancedSearchScreen> {
  AdvancedSearchScreenState();

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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        body: SafeArea(
            maintainBottomViewPadding: true,
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: screenHeight * 23 / 100,
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
                ),
                Container(
                  height: screenHeight * 6 / 100,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(29))),
                        hintText: 'Find your recipe'),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  //height: (screenHeight * 71 / 100),
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'Calories:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                      ))),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'From',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ))),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    width: screenWidth * 19.8 / 100,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'To',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                          ))),
                                  Container(
                                    width: screenWidth * 19.8 / 100,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'Ingredients:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                      ))),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              width: screenWidth * 54 / 100,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'Diet:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                      ))),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Vegetarian',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'High-Protein',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Low-Sugar',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Vegan',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Low-Carb',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Alcohol-free',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Paleo',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Low-Fat',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Balanced',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'High-Fiber',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Low-Soduim',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Immunity',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RichText(
                                  text: TextSpan(
                                      text: 'Allergies:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                      ))),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Gluten',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Soy',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Shellfish',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Dairy',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Wheat',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Tree nuts',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Eggs',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Fish',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CheckboxListTile(
                                title: Text(
                                  'Peanuts',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                value: false,
                                onChanged: (bool newValue) {},
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: screenWidth / 2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(bottom: 20),
                            //height: ((screenHeight * 71 / 100) * 8) / 100,
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
                                          top: 15,
                                          bottom: 15,
                                          left: 10,
                                          right: 10),
                                      color: Color.fromRGBO(250, 74, 12, 1),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SearchResultScreen(
                                                        searchResultBloc:
                                                            null)));
                                      }),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: screenWidth / 3,
                                      right: screenWidth / 3,
                                      top: screenHeight * 5 / 100),
                                  child: RichText(
                                    text: TextSpan(
                                        text: "Show Less Options",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MyHomePage()));
                                          }),
                                  ),
                                )
                              ],
                            )),
                      ],
                    )
                  ],
                )
              ],
            )));
  }
}

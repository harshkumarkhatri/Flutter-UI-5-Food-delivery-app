import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://previews.123rf.com/images/ferli/ferli1606/ferli160600175/58466719-top-view-portrait-of-italian-homemade-pizza-with-ingredients.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Taking Order For Fast Delivery",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  height: 1.3,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 25, 80, 2),
            child: Text(
              "See resturants nearby by",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 80, 55),
            child: Text(
              "adding your location",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(padding:EdgeInsets.all(10),
                      child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  // side: BorderSide(color: Colors.blue),
                  ),
              textColor: Colors.white,
              padding: EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.yellow,
                      Colors.yellow[600],
                      Colors.yellow[900]
                    ],
                  ),
                ),
                padding: EdgeInsets.all(12),
                child: Container(
                  child: Text(
                    "Start",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Padding(padding:EdgeInsets.fromLTRB(0, 10, 0, 50),
                      child: Container(
              alignment: Alignment.center,
              child: Text("Now Deliver to Your Door 24/7",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,letterSpacing: 1),)
            ),
          )
        ],
      ),
    ));
  }
}

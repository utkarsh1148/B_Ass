import 'package:flutter/material.dart';
import '../Features.dart';
import '../MainGridList.dart';
import '../constants.dart' as glo;

void main() => runApp(MyAppp());

class MyAppp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.keyboard_backspace),
            ),
     body: MyHomePage()
    ));
  }
}

class MyHomePage extends StatefulWidget {
  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView.builder(
              itemCount: glo.carouselNum,
              itemBuilder: (BuildContext ctxt, int index) {
                return GestureDetector(
                  child:  Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: GridSubject(),
                      ),
                      Container(
                        width: double.infinity,
                        child: Features(),
                      )
                    ],
                  ),
                  onTap: () =>print(index),
                );

              }
          ),

        ],
      )


    );
  }
}

import 'package:client/screens/Home/carousel.dart';
import 'package:client/widgets/appBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:client/widgets/sidebar.dart';
import 'package:flutter/material.dart';

//--- Home Page Widget ---//

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int navIndex = 0;
  final tabs = [
/*--- in case we want to use the same screen to display 
different widgets in the body :
   * The cart widget should be added to this array 
   * The menu widget should be added to this array  */
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(),
      drawer: Sidenav(navIndex, (int index) {
        setState(() {
          navIndex = index;
        });
      }),
      backgroundColor: Colors.white,
      body: ImageCarousel(),
      bottomNavigationBar: BottomNav(
        ind: 0,
      ),
    );
  }
}

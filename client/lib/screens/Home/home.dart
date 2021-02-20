import 'package:client/screens/Home/carousel.dart';
import 'package:client/widgets/appBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:client/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int navIndex = 0;
  final tabs = [
    Center(
        child: Column(children: <Widget>[
      Text("home",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.yellow[800])),
      Image(
        image: AssetImage('assets/home.jpg'),
        height: 535,
      )
      //   // Image.network(
      //   //     "https://www.theflavorbender.com/wp-content/uploads/2018/01/Sri-Lankan-Fish-Patties-The-Flavor-Bender-2-11-700x1049.jpg",
      //   //     height: 500,
      //   //     fit: BoxFit.cover)
      //   ,
    ])),

// The cart widget should be added to this array

//The menu widget should be added to this array
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(),

      // appBar: AppBar(),
      drawer: Sidenav(navIndex, (int index) {
        setState(() {
          navIndex = index;
        });
      }),
      backgroundColor: Colors.white,

      body: Container(
        child: new Stack(
          children: <Widget>[
            ImageCarousel(),

            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Text("click"),
            // )

            // backgroundColor: Colors.white,
          ],
        ),
      ),

      // backgroundColor: Colors.white,
      bottomNavigationBar: BottomNav(
        ind: 0,
      ),
    );
  }
}

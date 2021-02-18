import 'package:client/screens/Home/home.dart';
import 'package:client/widgets/appBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:client/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MyHomePage(title: "Yummy Bayt"));

      // case '/profile':
      //     return MaterialPageRoute(
      //
      //       builder: (_) => profile(
      //             data: args,
      //           ),
      //     );

      //---------------------------------------

      // case '/contact':
      //     return MaterialPageRoute(
      //
      //       builder: (_) => Contactus(
      //             data: args,
      //           ),
      //     );

      //---------------------------------------
      // case '/aboutus':
      //     return MaterialPageRoute(
      //
      //       builder: (_) => aboutus(
      //             data: args,
      //           ),
      //     );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: IAppBar(),
        body: Center(
          child: Text('ERROR'),
        ),
        bottomNavigationBar: BottomNav(ind: 2),
      );
    });
  }
}

import 'package:client/screens/Home/home.dart';
import 'package:client/widgets/appBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:client/main.dart';
import 'package:client/screens/Cart/cart.dart';
import 'package:client/screens/Menu/menu.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed

    final arguments = settings.arguments;

    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => MyHomePage(title: "Yummy Bayt"));
      case '/menu':

      // return MaterialPageRoute(builder: (_) => MyHomePage());

      case '/cart':
        return MaterialPageRoute(
          builder: (_) => Cart(
              // data: arguments,
              ),
        );

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
        // If there is no such named route in the switch statement
        return _errorRoute();
    }
  }

// this widget will be call when ever the user navigates to a route that does not exist
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: IAppBar(),
        body: Center(
          child: Text('ERROR THIS PAGE DOES NOT EXIST, LET"S GO BACK HOME'),
        ),
        bottomNavigationBar: BottomNav(ind: 2),
      );
    });
  }
}

import 'package:client/widgets/checkoutBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:client/widgets/time.dart';
import 'package:client/widgets/payment.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// class SecondRoute extends StatelessWidget {
//   int group = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CheckoutBar(),
//       body: Container(
//         child: new Stack(
//           children: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Time()),
//                 );
//               },
//               child: Time(),
//             ),
//             Payment(),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNav(
//         ind: 0,
//       ),
//     );
//   }
// }
class Route extends StatelessWidget {
  Route({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CheckoutBar(),
    );
  }
}

class SecondRoute extends StatelessWidget {
  SecondRoute({Key key}) : super(key: key);

  insertMethod() async {
    String theUrl = "http://localhost:3000/checkout/checkout";
    var response = await http.post(Uri.encodeFull(theUrl), headers: {
      "Accept": "application/json"
    }, body: {
      "orderNumber": "1",
      "userID": "1",
      "orderDate": "2020-10-10 02:10:30",
      "totalAmount": "70.00",
      "address": "amman",
      "Notes": "hiii",
      "status": "accepted",
      "payment": "cash",
      "delivery": "yes",
      "phoneNumber": "99",
      "deliveryTime": "00",
    });
    var respbody = json.decode(response.body);
    print(respbody);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Center(
                child: Route(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Center(
                child: Payment(),
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 5,
            thickness: 3,
            endIndent: 0,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Time()),
                    );
                  },
                  child: Time(),
                ),
              ),
            ),
          ),
          RaisedButton(child: Text("Order"), onPressed: () => {insertMethod()}),
          const Divider(
            color: Colors.grey,
            height: 5,
            thickness: 3,
            endIndent: 0,
          ),
        ],
      ),
    );
  }
}

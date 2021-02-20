// import 'package:flutter/material.dart';

// class Payment extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       home: MyPayment(),
//     );
//   }
// }

// class MyPayment extends StatefulWidget {
//   @override
//   _MyPaymentState createState() => _MyPaymentState();
// }

// class _MyPaymentState extends State<MyPayment> {
//   int _value = 1;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           for (int i = 1; i <= 3; i++)
//             ListTile(
//               title: Text(
//                 'Radio $i',
//                 style: Theme.of(context)
//                     .textTheme
//                     .subtitle1
//                     .copyWith(color: i == 3 ? Colors.black38 : Colors.black),
//               ),
//               leading: Radio(
//                 value: i,
//                 groupValue: _value,
//                 activeColor: Color(0xFF6200EE),
//                 onChanged: i == 3
//                     ? null
//                     : (int value) {
//                         setState(() {
//                           _value = value;
//                         });
//                       },
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:client/widgets/checkoutBar.dart';

/// This is the main application widget.
class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: CheckoutBar(),
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter _character = SingingCharacter.lafayette;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Pay with ",
          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
        ),
        ListTile(
          title: const Text('Chash'),
          leading: Radio(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Credit Cart'),
          leading: Radio(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

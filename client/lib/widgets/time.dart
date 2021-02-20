import 'package:flutter/material.dart';
import 'package:client/screens/Checkout/checkout.dart';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Picker Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.light()),
      home: MyTime(),
    );
  }
}

class MyTime extends StatefulWidget {
  @override
  _MyTimeState createState() => _MyTimeState();
}

class _MyTimeState extends State<MyTime> {
  TimeOfDay _time = TimeOfDay(hour: 0, minute: 30);

  void _selectTime() async {
    final TimeOfDay newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  Widget build(BuildContext context) {
    print(_time.format(context));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _selectTime,
              child: Text('Select Time',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Lalezar')),
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow[800],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Selected time: ${_time.format(context)}',
            ),
          ],
        ),
      ),
    );
  }
}

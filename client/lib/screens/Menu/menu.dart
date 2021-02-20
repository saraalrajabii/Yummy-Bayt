import 'package:client/entities/product.dart';
import 'package:client/widgets/appBar.dart';
import 'package:client/widgets/bottomNav.dart';
import 'package:client/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  // var country_pref ;
  int navIndex = 0;

  List<Product> _data = List<Product>();

  Future<List<Product>> getData() async {
    var url = "http://10.0.2.2:3000/product/getAllProducts";
    var response = await http.get(url);
    var data = List<Product>();

    if (response.statusCode == 200) {
      var productsJson = jsonDecode(response.body);
      for (var productJson in productsJson) {
        data.add(Product.fromJson(productJson));
      }
    }
    // var responsebody = jsonDecode(response.body);
    // return responsebody;
    print(data);
    return data;
  }

  @override
  void initState() {
    getData().then((value) {
      setState(() {
        _data.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IAppBar(),
      drawer: Sidenav(navIndex, (int index) {
        setState(() {
          navIndex = index;
        });
      }),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            // child: Padding(
            //   padding: const EdgeInsets.only(
            //       top: 32.0, bottom: 32, left: 16.0, right: 16.0),
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _data[index].productName,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  _data[index].description,
                ),
                // Text(
                //   _data[index].price,
                // ),
              ],
            ),
          );
        },
        itemCount: _data.length,
      ),
      // Column(children: data.forEach((k, v) => print('Key=$k, Value=$v'))),
      // ImageCarousel(),
      //     Container(
      //         child: new Stack(
      //   children: <Widget>[
      //     Text("Menu")
      //     // Text("home",
      //     //     style: TextStyle(
      //     //         fontWeight: FontWeight.bold, color: Colors.yellow[800])),

      //     // backgroundColor: Colors.white,
      //   ],
      // )),
      bottomNavigationBar: BottomNav(
        ind: 0,
      ),
    );
  }
}

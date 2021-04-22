import 'package:flutter/material.dart';
import 'package:state_management/product_box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Nikon D3500",
                description: "The cheapest-latest Nikon DSLR ever",
                price: 300,
                image: "d3500.png"),
            ProductBox(
                name: "Nikon D5600",
                description: "Medium-range Nikon DSLR",
                price: 500,
                image: "d5600.png"),
            ProductBox(
                name: "Nikon D6",
                description: "The Best Nikon DSLR yet",
                price: 2300,
                image: "d6.png"),
            ProductBox(
                name: "Nikon Z7 II",
                description: "The Best Nikon Mirrorless yet",
                price: 1500,
                image: "z7ii.png"),
            ProductBox(
                name: "Nikon Z50",
                description: "The latest APSC Nikon Mirrorless",
                price: 600,
                image: "z50.png"),
          ],
        ));
  }
}




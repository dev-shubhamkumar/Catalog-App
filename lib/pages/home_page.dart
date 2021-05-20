import 'package:flutter/material.dart';

import 'package:catalog_app/widgets/drawer.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int days = 30;
    String name = "Shubham";


    return Scaffold(

      appBar: AppBar(
        title: Text("Catalog App"),
      ),


      body: Center(
        child: Container(
          child: Text("It's a $days day app! and made by $name"),
        ),
      ),


      drawer: MyDrawer(),

    );
  }
}

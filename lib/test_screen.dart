import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
          Icons.home,
          color: Colors.yellow,
          size: 30,
        ),
        title: Text(
          "Hello world",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              print("Phone icon pressed");
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }


  Widget _buildBody(){
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(width: 5, color: Colors.yellow),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(3, 3),
                spreadRadius: 1,
                blurRadius: 5),
            BoxShadow(
                color: Colors.green.withOpacity(0.5),
                offset: Offset(-3, -3),
                spreadRadius: 1,
                blurRadius: 5)
          ]),
      child: FlutterLogo(
        size: 48,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterstartwebinar/login_screen.dart';
import 'package:flutterstartwebinar/user.dart';
import 'package:flutterstartwebinar/user_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = User.getDummy();

  List<User> filteredUser;

  String search = "";

  initState() {
    super.initState();
    filteredUser = users;
  }

  onFilter() {
    filteredUser = users.where((element) => element.name.startsWith(search));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Text(
          "Integrid Solutions",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
            ),
          ),
          PopupMenuButton(onSelected: (value) {
            if (value == "logout") {
              //logout
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => LoginScreen()));
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text(
                  "Logout",
                ),
                value: "logout",
              )
            ];
          })
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return UserItem(users[index]);
      },
    );
  }
}

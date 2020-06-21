import 'package:flutter/material.dart';
import 'package:flutterstartwebinar/user.dart';

class UserItem extends StatelessWidget {
  final User user;

  UserItem(this.user);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {}, child: _buildBody(context));
  }

  Widget _buildListtile() {
    return ListTile(
      leading: _buildProfileImage(),
      dense: true,
      selected: true,
      title: Text(
        user.name,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Young Innovations Pvt Ltd."),
          Text("Young Innovations Pvt Ltd.")
        ],
      ),
      trailing: Icon(Icons.phone),
      isThreeLine: true,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          _buildProfileImage(),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                user.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(user.company),
              SizedBox(
                height: 4,
              ),
              Text(
                user.position,
                style: TextStyle(color: Colors.black54),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _buildProfileImage() {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
        image: DecorationImage(
          image: NetworkImage(
              "https://storage.googleapis.com/yipl-site/staffs/Umesh.jpg"),
        ),
      ),
    );
  }
}

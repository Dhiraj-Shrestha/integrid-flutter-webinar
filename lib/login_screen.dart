import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdddddd),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 32,
            ),
            _buildEmailField(),
            SizedBox(
              height: 16,
            ),
            _buildPasswrodField(),
            SizedBox(
              height: 24,
            ),
            _buildLoginButton()
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 14),
        color: Color(0xffEB3038),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Text("Login", style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        onPressed: (){},
      ),
    );
  }


  Widget _buildPasswrodField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(color: Colors.blue),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(color: Colors.blue),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
}

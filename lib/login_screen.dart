import 'package:flutter/material.dart';
import 'package:flutterstartwebinar/AppConstant.dart';
import 'package:flutterstartwebinar/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String email;
  String password;
  bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = false;
  }

  void onLoginPressed() async {
    if (!_formKey.currentState.validate()) return;
    _formKey.currentState.save();
    print("email: $email \t password: $password");
    isLoading = true;
    this.setState(() {});
    await login();
    this.setState(() {
      isLoading = false;
    });
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  Future login() {
    return Future.delayed(Duration(seconds: 4));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdddddd),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  height: 50,
                ),
                _buildPasswrodField(),
                SizedBox(
                  height: 24,
                ),
                _buildLoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return this.isLoading
        ? Center(child: CircularProgressIndicator())
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 14),
              color: Color(0xffEB3038),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: this.onLoginPressed,
            ),
          );
  }

  Widget _buildPasswrodField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        obscureText: true,
        validator: (value) {
          if (value.isEmpty) return "The password must not be empty";
          if (value.length < 6)
            return "The password must have atleast 6 character";
          return null;
        },
        onSaved: (value) {
          password = value;
        },
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
        validator: (value) =>
            value.isNotEmpty ? null : ValidationMessage.EMAIL_MESSAGE,
        onSaved: (value) => email = value,
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

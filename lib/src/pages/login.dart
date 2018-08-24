import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final email = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: true,
//      initialValue: 'username',
      decoration: InputDecoration(
        hintText: 'Username',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
//      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
//        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = new RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: const Text('Sign in'),
//      color: Theme.of(context).accentColor,
      onPressed: () {
//        Navigator.popAndPushNamed(context, '/home');
//        Navigator.pushReplacementNamed(context, '/');
        Navigator.pop(context);
//        Navigator.pushNamed(context, '/home');
        // Perform some action
      },
    );

    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}
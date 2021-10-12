import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String email = '';
  String pass = '';
  String _show = '';
  String output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
          Column(children: <Widget>[
            TextField(
              onChanged: (mailOutput) {
                print(mailOutput);
                email = mailOutput;
              },
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Username/Email'),
            ),
            TextField(
              onChanged: (passOutput) {
                print(passOutput);
                pass = passOutput;
              },
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ]),
          RaisedButton(
            onPressed: () {
              print("Text inputted by user: " + email);
              setState(() {
                _show = email + " with " + pass + " is trying to login";
              });
            },
            child: Text('LOGIN'),
          ),
          Text(
            _show,
          ),
        ]), //C
      ), //C
    ); //S
  }
}

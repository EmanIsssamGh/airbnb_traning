
import 'dart:ui';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecoundScreen.dart';
void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Aibnb'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airbnb'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20.0, left: 20.0, top: 20.0),
              child: Text(
                'Log in or sign up to Airbnb:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: 25.0,
                left: 25.0,
                bottom: 0.0,
              ),
              padding: EdgeInsets.all(0.0),
              height: 80.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'IT',
                      favorite: ['+39', 'FR'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 0.0,
                right: 25.0,
                left: 25.0,
              ),
              padding: EdgeInsets.all(3.0),
              height: 77.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Phone number',
                  labelText: 'Phone:',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                ' Well\' call you or text you to confirm your number. Standard message and data rates apply. ',
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                border: Border.all(color: Colors.white),
              ),
              child: MaterialButton(
                color: Colors.blue,
                child: Text(' Continue',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                onPressed: () {

                  Navigator.of(context).push(_createRoute());
                },
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Text(
                '----------------  OR  ------------------ ',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Box(
            'Continue with Email',
            'images/email.jpg',
          ),
          Box(
            'Continue with Facebook',
            'images/facebook.png',
          ),
          Box(
            'Continue with Google',
            'images/google.jpg',
          ),
          Box(
            'Continue with Apple',
            'images/apple.png',
          ),
        ],
      ),
    );
  }

  Widget Box(String t, String imagUrl) {
    return Flexible(
        child: FlatButton(
            onPressed: () {},
            child: Container(
                margin: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      //width: 2.0,
                        height: 30.0,
                        child: Image.asset(imagUrl)),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      t,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    )
                  ],
                ))));
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>   MyApp(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

}



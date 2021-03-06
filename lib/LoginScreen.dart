import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                      fontFamily: 'Raleway',
                      // foreground: Paint()..shader =
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Username',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Enter username',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Colors.grey[400])),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Enter password',
                    hintStyle:
                        TextStyle(fontSize: 15, color: Colors.grey[400])),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blueAccent, Colors.greenAccent]),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

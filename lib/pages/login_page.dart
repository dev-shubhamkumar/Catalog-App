import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 40,
            ),

            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),

            SizedBox(
              height: 20,
            ),
            
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: <Widget>[

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      print("Login Button Testing!!!");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }, 
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  ),
                  
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

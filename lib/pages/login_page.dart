import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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

                  InkWell(
                    onTap: () async {
                      print("Login Button Testing!!!");
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(milliseconds: 40));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 25),
                      width: changeButton ? 50 : 120,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton ? Icon(
                        Icons.done,
                        color: Colors.white,
                      ) : Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     print("Login Button Testing!!!");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   }, 
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  // ),
                  
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

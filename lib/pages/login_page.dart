import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
              fontSize: 24,
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
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    print("Login Button Testing!!!");
                  }, 
                  child: Text(
                    "Login"
                  ),
                  style: TextButton.styleFrom(),
                ),
                
              ],
            ),
          ),

        ],
      ),
    );
  }
}

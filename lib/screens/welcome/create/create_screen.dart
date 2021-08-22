import 'package:flutter/material.dart';
import 'package:home_decor/screens/welcome/shopping/shopping_screen.dart';

class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image.asset(
              "assets/icons/icon-08.png",
              height: size.height * 0.25,
            ),
          ),
          Text("  Find your \nunique piece!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
          SizedBox(
            height: 10,
          ),
          Text("Join us,"),
          SizedBox(
            height: 15,
          ),
          Container(
            width: size.width * 0.8,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "E-mail",
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: size.width * 0.8,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Password"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: size.width * 0.3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  backgroundColor: Colors.deepPurple[200],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ShoppingScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("sign up with"),
          SizedBox(
            height: 8,
          ),
          Image.asset(
            "assets/icons/icon-01.png",
            height: size.height * 0.14,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                " Sign in",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

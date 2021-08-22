import 'package:flutter/material.dart';
import 'package:home_decor/screens/welcome/create/create_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Decor &\n  enjoy!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              )),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/icons/icon-09.png",
            height: size.height * 0.45,
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
                        return CreateScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Get started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35,
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

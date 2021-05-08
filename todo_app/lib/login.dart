import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/signEmail.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "images/circle-cropped.png",
                height: 240,
              ),
              Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInEmail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 250.0,
                      height: 50.0,
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 6)),
                          Image.network(
                            "https://images.vexels.com/media/users/3/137283/isolated/preview/8ca486faebd822ddf4baf00321b16df1-google-icon-logo-by-vexels.png",
                            height: 45,
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Text(
                            'LogIn with Google',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20)),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInEmail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 250.0,
                      height: 50.0,
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 6)),
                          Image.network(
                            "https://cdn.icon-icons.com/icons2/1182/PNG/512/1490129331-rounded07_82197.png",
                            height: 45,
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Text(
                            'Sing In with Email',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/c9ce474d06a5e832416310fbacf9ed58.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ));
  }
}

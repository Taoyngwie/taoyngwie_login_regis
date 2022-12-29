import 'package:flutter/material.dart';
import 'package:taoyngwie_login_regis/screen/login.dart';
import 'package:taoyngwie_login_regis/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/Logo.png",
                width: 300,
                height: 250,
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.add),
                  label: Text(
                    "Create new user",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //สำหรับลิงค์ ไปอีกหน้า
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.login),
                  label: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //สำหรับลิงค์ ไปอีกหน้า
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LogingScreen();
                      }),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

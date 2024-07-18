import 'package:flutter/material.dart';
import 'package:music_app/screens/app.dart';
import 'package:music_app/screens/register.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 120, left: 30, right: 60),
            child: Text(
              'Welcome to \nMusify',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.35,
                  right: 40,
                  left: 40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MusicScreen()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(186, 240, 95, 163),
                            padding: EdgeInsets.symmetric(
                                horizontal: 22, vertical: 14)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        'Dont Have an account?Create Account ',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyRegister()),
                          );
                        },
                        child: Text(
                          'SignUp',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(186, 240, 95, 163),
                            padding: EdgeInsets.symmetric(
                                horizontal: 22, vertical: 14)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

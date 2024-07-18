import 'package:flutter/material.dart';
import 'package:music_app/screens/app.dart';
import 'package:music_app/screens/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text('Create Account',
          style: TextStyle(color: Colors.white,),),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                  
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 30,),



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
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                   TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Confirm Password',
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
                          'SignUp',
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
                            height: 20,
                          ),

                          Column(
                            children: [Text('Already Have an Account? Click Here to Login',
                            style: TextStyle(fontSize: 15,color: Colors.white),
                            )],
                          ),

                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             
                              TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyLogin()),
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
    
    );
  }
}
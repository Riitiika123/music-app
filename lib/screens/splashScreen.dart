import 'package:flutter/material.dart';
import 'package:music_app/screens/login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async{
  
    await Future.delayed(const Duration(seconds: 1),(){});
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=>MyLogin()));

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: const[
              Image(image: AssetImage('assets/logo.jpg'),fit: BoxFit.fill,),
          
          ],),
      ),
    );
  }
}
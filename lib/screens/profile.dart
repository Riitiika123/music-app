import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Profile',
        style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.settings,),
          
        ],
      ),

      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/logo4.jpg'),),
              ),
        
                SizedBox(height: 10,),
        
                Text('My Name',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white    
                            ),),
        
                SizedBox(height: 20,),

                ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(186, 240, 95, 163),
                  foregroundColor: Colors.white,
                
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20)
                ),
                 child: Text('Upgrade to pro'),
                 
                 ),
        
        SizedBox(height: 30,),
                
                 ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.verified_user_sharp),
                  title: Text('Privacy'),
                  trailing: Icon(Icons.arrow_forward),
                 ),
        
                  ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.language_outlined),
                  title: Text('Music Language'),
                  trailing: Icon(Icons.arrow_forward),
                 ),
        
                  ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.help),
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.arrow_forward),
                 ),
        
                  ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.person),
                  title: Text('Invite a Friend'),
                  trailing: Icon(Icons.arrow_forward),
                 ),
        
                  ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                  trailing: Icon(Icons.arrow_forward),
                 ),
            ],
          ),
        ),
      ),
    );
  }
}
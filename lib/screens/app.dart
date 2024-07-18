import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/screens/home.dart';
import 'package:music_app/screens/search.dart';
import 'package:music_app/screens/yourlibrary.dart';
import 'package:music_app/screens/profile.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  AudioPlayer _audioPlayer = new AudioPlayer();
 var Tabs = [];
 int currentTabsIndex = 0;
 Music? music;

Widget miniPlayer(Music? music)
 {

  this.music = music;
  setState(() {
    
  });
  if(music==null){
    return SizedBox();
  }
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
    color:Colors.blueGrey,
    width: deviceSize.width,
    height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.network(music.image),
        
        Column(
          children: [
            Text(music.name,
            style: TextStyle(color: Colors.white,fontSize: 20),),
            Text(music.desc)
          ],

        ),
        
        IconButton(onPressed: () async {
          //to play music

         await _audioPlayer.play(music.audioURL as Source);
        }, 
        icon: Icon(Icons.play_arrow, color: Colors.white,))
      ],
    ),);
 }

@override
  void initState() {
    
    super.initState();
    Tabs = [Home(miniPlayer),Search(),Yourlibrary(),ProfilePage()];
  }

 //UI Design Code goes inside build

  @override
  Widget build(BuildContext context) {
    //print('let build');
    return Scaffold(
      body: Tabs[currentTabsIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
            currentIndex: currentTabsIndex,
          onTap : (currentIndex)
          {
            print("Current Index is $currentIndex");
            currentTabsIndex = currentIndex;
          
            //set state only use in statful widget for re-render/ triggering the screens
          
            setState(() {
              
            }); //re-render
          },
            selectedLabelStyle: TextStyle(fontSize: 20),
            selectedItemColor: Colors.white,
            iconSize: 25,
            items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
                icon: Icon(
              Icons.home,
              color: Colors.white,
            
            ),label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.search,
              color: Colors.white,
            ),label:'Search'),
            BottomNavigationBarItem(
                icon: Icon(
              Icons.library_books,
              color: Colors.white,
            ),label: 'Your Library'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
              color: Colors.white,
              ),label: 'My Profile')
          ]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:music_app/models/category.dart';
import 'package:music_app/services/category_operations.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/services/music_operations.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Function _miniPlayer;
  Home(this._miniPlayer);   //Dart constructor shorthand
  //const Home({super.key});

//AppBar

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        message,
        style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500),
      ),
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.settings,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  //Grid

  Widget createGrid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 270,
        width: 500,
        child: GridView.count(
          childAspectRatio: 6 / 2, //ratio=width/height
          // spacing between both - two types of spacing
          crossAxisSpacing: 10, //vertical
          mainAxisSpacing: 10, //Hrizontal
          children: createListofCategories(),
          crossAxisCount: 2,
        ),
      ),
    );
  }

  List<Widget> createListofCategories() {
    List<Category> categoryList = CategoryOperations
        .getCategories(); //call this method to receive the data
    //convert data to widget using map function
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createCategory(Category category) {
    // Category is a class and category is its reference object.
    return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(colors:[
        Color(0xFFED5577),
          Color(0xf5B04D87),

          
      ] ,
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      )
    ),
      child: Row(
        children: [
          Image.network(
            category.imageURL, //var call through object
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              category.name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

//list view

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return createMusic(
                  musicList[index],
                );
              },
              itemCount: musicList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            //Inkwell is a widget use to made image clickable
            child: InkWell(
              onTap: () {
                _miniPlayer(music);
              },
              child: Image.network(
                music.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            music.name,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            music.desc,
            style: TextStyle(color: Colors.blueGrey),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            createAppBar('Good Morning'),
            SizedBox(
              height: 5,
            ),
            createGrid(),
            createMusicList(
              'Made For You',
            ),
            createMusicList(
              'Popular Playlist',
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black
          // gradient: LinearGradient(
          //     colors: [
          //       Color(0xFF86878),
          //       Color(0xf5B04D87),
                
          //     ],
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     stops: [0.1, 0.3]),
        ),
      )),
    );
  }
}

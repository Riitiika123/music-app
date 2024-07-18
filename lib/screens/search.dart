import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: 'Search Song, artist , albums....',
              prefixIcon: Icon(Icons.search,),
            
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0))) ,

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(color: Color.fromARGB(186, 240, 95, 163),
                    width: 2.0)
                  )
            ),
          ),

          SizedBox(height: 30,),


        ]
      ),
      
      ),
      
    );
  }
}
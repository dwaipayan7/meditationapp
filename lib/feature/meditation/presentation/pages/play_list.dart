import 'package:flutter/material.dart';
import 'package:meditationapp/core/theme.dart';
import 'package:meditationapp/feature/music/presentation/pages/music_player.dart';

import '../bottom_Nav_bar/widgets/bottom_nav_bar.dart';

class PlayListScreen extends StatelessWidget {
   PlayListScreen({super.key});

  final List<Map<String, String>> songs = [
    {
      'title': 'Rain On Glass',
      'artist': 'Rain On Glass',
      'thumbnail': 'assets/child_with_dog.png',
    },
    {
      'title': 'Gentle Breeze',
      'artist': 'Soothing Sounds',
      'thumbnail': 'assets/child_with_dog.png',
    },
    {
      'title': 'Whispering Pines',
      'artist': 'Nature Sounds',
      'thumbnail': 'assets/child_with_dog.png',
    },
    {
      'title': 'Ocean Waves Breeze',
      'artist': 'Soothing Sounds',
      'thumbnail': 'assets/child_with_dog.png',
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: Text("Chill Playlist",
          style: TextStyle(
              fontWeight: FontWeight.w500,
            fontSize: 21
          ),),
          backgroundColor: DefaultColors.white,
          elevation: 1,
        ),
        body: Container(
          color: DefaultColors.white,
          child: ListView.builder(
            itemCount: songs.length,
              itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(songs[index]['thumbnail']!),
                ),
                trailing: Icon(Icons.arrow_forward_ios, size: 15,),
                title: Text(songs[index]['title']!, style: TextStyle(
                  fontWeight: FontWeight.w500
                ),),
                subtitle: Text(songs[index]['artist']!, style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MusicPlayerScreen()));
                },
              );
              }
          ),
        ),
      ),
    );
  }
}

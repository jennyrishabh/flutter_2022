import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '/models/song.dart';
import '/utils/api_client.dart';

class ListOfSongs extends StatefulWidget {
  const ListOfSongs({ Key? key }) : super(key: key);
  
  @override
  _ListOfSongsState createState() => _ListOfSongsState();
}

class _ListOfSongsState extends State<ListOfSongs> {
  AudioPlayer audioPlayer = AudioPlayer();

int result = 0;


List<Song> songs = [];
dynamic error;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    ApiClient client = ApiClient();
    client.getSongs(getSongList, getSongError);
  }
  getSongList(List<Song> songs){
      this.songs = songs;
      setState(() {
        
      });
  }
  getSongError(dynamic error){
    this.error = error;
    setState(() {
      
    });
  }

  Center _showLoading(){
    return Center(child: CircularProgressIndicator());
  }

  ListView _printSong() {
   return ListView.builder(itemBuilder: (BuildContext ctx, int index){
              return ListTile(
                leading: Image.network(songs[index].image),
                title: Text(songs[index].trackName),
                subtitle: Text(songs[index].artistName),
                trailing: IconButton(
                  onPressed: () async{
                    print("Song Play ${songs[index].audio}");
                    result = (result==1)?await audioPlayer.play(songs[index].audio):await audioPlayer.pause();
                  },
                  //icon: Icon(Icons.play_arrow_rounded,size: 30, color: Colors.redAccent,))
                  icon: (result ==1 )? _playicon():_pauseicon() ,

              ));},itemCount: songs.length , ); 
        }


    Icon _playicon(){
        return Icon(Icons.play_arrow_rounded,size: 30, color: Colors.redAccent,);
    }

     Icon _pauseicon(){
      return Icon(Icons.motion_photos_paused_sharp ,size: 18, color: Colors.yellow,);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Songs'),),
        body: Container(

          child: (songs.length==0)?_showLoading():_printSong()
        ),
    );
  }
}
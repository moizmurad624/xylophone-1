import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:volume_controller/volume_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});


  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  var soundnumber;

  void checkVolume() async {
    var getVolume = await VolumeController().getVolume();
    // var Volume_count = getVolume*100;
    if (getVolume == 0.0) {
      Fluttertoast.showToast(msg: "Please turn on the volume");
    }
    else {
      final player = AudioPlayer();
      player.play(AssetSource('note$soundnumber.wav'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('RAZAIN\'s GIFT',
              style: TextStyle(color: Colors.white), ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      soundnumber = 1;
                      checkVolume();
                      },
                    child: Container(
                      child: Center(child: Text("Note 1",style: TextStyle(fontSize: 26),)),
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      width: double.infinity,
                      height: 200,
                      color: Colors.yellow,
                    ),
                  ),
                 ),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        soundnumber = 2;
                        checkVolume();
                      },
                      child: Container(
                        child: Center(child: Text("Note 2", style: TextStyle(fontSize: 26),)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        color: Colors.orange,
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        soundnumber = 3;
                        checkVolume();
                      },
                      child: Container(
                        child: Center(child: Text("Note 3", style: TextStyle(fontSize: 26),)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        color: Colors.blue,
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        soundnumber = 4;
                        checkVolume();
                      },
                      child: Container(
                        child: Center(child: Text("Note 4", style: TextStyle(fontSize: 26),)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        color: Colors.pink,
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        soundnumber = 5;
                        checkVolume();
                      },
                      child: Container(
                        child: Center(child: Text("Note 5", style: TextStyle(fontSize: 26),)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        color: Colors.green,
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        soundnumber = 6;
                        checkVolume();
                      },
                      child: Container(
                        child: Center(child: Text("Note 6", style: TextStyle(fontSize: 26),)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        color: Colors.purple,
                      ),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        soundnumber = 7;
                        checkVolume();
                      },
                      child: Container(
                        child: Center(
                            child: Text("Note 7",
                              style: TextStyle(fontSize: 26),)),
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.infinity,
                        height: 200,
                        color: Colors.yellow,
                      ),
                    ))
              ],
            ),
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
// import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(
            color: Color.fromARGB(255, 238, 241, 240),
            child: Image.asset(number.image),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AssetSource player =
                  AssetSource('assets/sounds/colors/black.wav');
              AudioPlayer().play(player);
              // AudioCache({})
              // AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
              // player.play
              print('test1');
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

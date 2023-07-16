import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

import '../components/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<Item> color = const [
    Item(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'kuro',
        enName: 'black'),
    Item(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown'),
    Item(
        sound: 'sounds/colors/dustyyellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Kosa/',
        enName: 'dustyyellow'),
    Item(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'haiiro',
        enName: 'gray'),
    Item(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'red'),
    Item(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'green'),
    Item(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiro',
        enName: 'whiter'),
    Item(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('color'),
      ),
      body: ListView(
        children: getList(color),
      ),
    );
  }

  List<Widget> getList(List<Item> color) {
    List<ListItem> itemList = [];
    for (int i = 0; i < color.length; i++) {
      itemList.add(
        ListItem(number: color[i], color: Color.fromARGB(255, 70, 21, 123)),
      );
    }
    return itemList;
  }
}

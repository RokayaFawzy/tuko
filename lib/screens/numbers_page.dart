import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

import '../components/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> number = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: '1'),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: '2'),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: '3'),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: '4'),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: '5'),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: '6'),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'nana',
        enName: '7'),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: '8'),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'ku',
        enName: '9'),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: '10'),
  ];
//Number(
  // image: 'assets/images/numbers/number_one.png',
  // jpName: 'ichi',
  // enName: 'one');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Numbers'),
      ),
      body: ListView(
        children: getList(number),
      ),
    );
  }

  List<Widget> getList(List<Number> number) {
    List<Item> itemList = [];
    for (int i = 0; i < number.length; i++) {
      itemList.add(Item(number: number[i]));
    }
    return itemList;
  }
}

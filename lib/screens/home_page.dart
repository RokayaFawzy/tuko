import 'package:flutter/material.dart';
import 'package:toku/screens/numbers_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 241, 240),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          //  Color.fromARGB(255, 36, 152, 234)
          //
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            text: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            text: 'Family Members',
            color: Color.fromARGB(255, 29, 95, 34),
            onTap: () {},
          ),
          Category(
            text: 'Colors',
            color: Color.fromARGB(255, 70, 21, 123),
            onTap: () {},
          ),
          Category(
            text: 'phrases',
            color: Color.fromARGB(255, 36, 152, 234),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

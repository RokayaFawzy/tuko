import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

import '../components/item.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List<Item> familyMembers = const [
    Item(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son'),
    Item(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter'),
    Item(
        sound: 'sounds/family_members/youngerbrohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'youngerbrother'),
    Item(
        sound: 'sounds/family_members/youngersister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto',
        enName: 'youngerSister'),
    Item(
        sound: 'sounds/family_members/olderbother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'olderBrother'),
    Item(
        sound: 'sounds/family_members/oldersister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'oldersister'),
    Item(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi/otousan',
        enName: 'father'),
    Item(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'okaasan/haha',
        enName: 'mother'),
    Item(
        sound: 'sounds/family_members/grandfather.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojiisan/sofu',
        enName: 'grandfather'),
    Item(
        sound: 'sounds/family_members/grandmother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo/obaasan',
        enName: 'grandmother'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('FamilyMember'),
      ),
      body: ListView(
        children: getList(familyMembers),
      ),
    );
  }

  List<Widget> getList(List<Item> familyMembers) {
    List<ListItem> itemList = [];
    for (int i = 0; i < familyMembers.length; i++) {
      itemList.add(ListItem(
          number: familyMembers[i], color: Color.fromARGB(255, 29, 95, 34)));
    }
    return itemList;
  }
}

import 'package:flutter/material.dart';
import 'package:toku/models/phrase.dart';

import '../components/item.dart';
import '../models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item> phrases = const [
    Item(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'KōdokuSuruKotoOWasurenaideKudasai',
      enName: 'DontForgetToSubscribe',
    ),
    Item(
      sound: 'sounds/phrases/i_love_programming.wav',
      jpName: 'WatashiWaPuroguraminguDaisukidesu',
      enName: 'ILoveProgramming',
    ),
    Item(
      sound: 'sounds/phrases/programming_is_easy.wav',
      jpName: 'PuroguraminguWaKantandesu ',
      enName: 'programmingIsEasy',
    ),
    Item(
      sound: 'sounds/phrases/where_are_you_going.wav',
      jpName: 'DokoNiIkuNo',
      enName: 'WhereAreYouGoing',
    ),
    Item(
      sound: 'sounds/phrases/what_is_your_name.wav',
      jpName: 'NamaeWaNandesuKa',
      enName: 'what is your name ?',
    ),
    Item(
      sound: 'sounds/phrases/i_love_anime.wav',
      jpName: 'WatashiWaAnimeGaDaisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      jpName: 'GoKibunWaIkagadesuKa',
      enName: 'HowAreYouFeeling?',
    ),
    Item(
      sound: 'sounds/phrases/are_you_coming.wav',
      jpName: 'KimasuKa',
      enName: 'are you coming?',
    ),
    Item(
      sound: 'sounds/phrases/yes_im_coming.wav',
      jpName: 'HaiWatashiWaKiteImasu',
      enName: 'yes i am coming',
    ),
//
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('phrases'),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhraseItem(
              phrase: phrases[index],
              color: Color.fromARGB(255, 36, 152, 234),
              itemType: 'phrases',
            );
          }),
    );
  }

  // List<Widget> getList(List<Phrase> phrase) {
  //   List<ListItem> itemList = [];
  //   for (int i = 0; i < phrase.length; i++) {
  //     itemList.add(PhraseItem(
  //      color: Color.fromARGB(255, 36, 152, 234),

  //       phrase: phrase[i],
  //     ));
  //   }
  //   return PhraseItem;
  // }
}

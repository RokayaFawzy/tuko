import 'package:flutter/material.dart';
import 'package:toku/models/phrase.dart';

import '../components/item.dart';
import '../models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item> phrases = const [
    Item(
      sound: 'sounds/phrases/dontforgettosubscribe.wav',
      jpName: 'KōdokuSuruKotoOWasurenaideKudasai',
      enName: 'DontForgetToSubscribe',
    ),
    Item(
      sound: 'sounds/phrases/iloveprogramming.wav',
      jpName: 'WatashiWaPuroguraminguDaisukidesu',
      enName: 'ILoveProgramming',
    ),
    Item(
      sound: 'sounds/phrases/programmingiseasy.wav',
      jpName: 'PuroguraminguWaKantandesu ',
      enName: 'programmingIsEasy',
    ),
    Item(
      sound: 'sounds/phrases/whereareyougoing.wav',
      jpName: 'DokoNiIkuNo',
      enName: 'WhereAreYouGoing',
    ),
    Item(
      sound: 'sounds/phrases/whatisyourname.wav',
      jpName: 'NamaeWaNandesuKa',
      enName: 'what is your name ?',
    ),
    Item(
      sound: 'sounds/phrases/iloveanime.wav',
      jpName: 'WatashiWaAnimeGaDaisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'sounds/phrases/howareyoufeeling.wav',
      jpName: 'GoKibunWaIkagadesuKa',
      enName: 'HowAreYouFeeling?',
    ),
    Item(
      sound: 'sounds/phrases/areyoucoming.wav',
      jpName: 'KimasuKa',
      enName: 'are you coming?',
    ),
    Item(
      sound: 'sounds/phrases/yesimcoming.wav',
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

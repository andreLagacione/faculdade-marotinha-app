import 'package:faculdademarotinhaapp/commons/cardList/cardList.dart';
import 'package:flutter/material.dart';

class AlunoLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CardList(),
              CardList(),
              CardList(),
              CardList(),
              CardList(),
            ],
          ),
        ],
      ),
    );
  }
}

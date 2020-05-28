import 'package:faculdademarotinhaapp/commons/cardShowData.dart';
import 'package:flutter/material.dart';

class AlunoLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: CardShowData(),
        ),
      ),
    );
  }
}

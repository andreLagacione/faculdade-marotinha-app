import 'package:faculdademarotinhaapp/commons/circleButton.dart';
import 'package:faculdademarotinhaapp/commons/models/CardInfoContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardShowData extends StatelessWidget {

  List<CardInfoCotent> values = new List<CardInfoCotent>();

  @override
  Widget build(BuildContext context) {
    values.add(new CardInfoCotent('Matéria', 'Ciência da Computação'));
    values.add(new CardInfoCotent('Idade', '30'));
    values.add(new CardInfoCotent('Nome', 'Pedrão do caminhão'));

    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  color: Colors.blue,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'André Ricardo Lagacione',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                for (var i = 0; i < values.length; i++)
                  Row(
                    children: <Widget>[
                      Text(
                        '${values[i].name}: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '${values[i].value}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          CircleButton(
                            buttonColor: Colors.blue,
                            inkwelColor: Colors.white,
                            size: 30,
                            iconColor: null,
                            iconSize: 18,
                            icon: Icons.edit,
                            onTap: () {},
                          ),
                          SizedBox(width: 10,),
                          CircleButton(
                            buttonColor: Colors.red[500],
                            inkwelColor: Colors.white,
                            size: 30,
                            iconColor: null,
                            iconSize: 18,
                            icon: Icons.delete,
                            onTap: () {},
                          )
                        ],
                      )
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}

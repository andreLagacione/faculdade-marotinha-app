import 'package:flutter/material.dart';

class CardShowData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: Text(
                  'André Ricardo Lagacione',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

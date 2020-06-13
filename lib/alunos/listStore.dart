import 'dart:convert';

import 'package:faculdademarotinhaapp/commons/cardList/models/Card.dart';
import 'package:faculdademarotinhaapp/config/environment.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'listStore.g.dart';

class ListStore =_ListStore with _$ListStore;

abstract class _ListStore with Store {
  final String baseUrl = Environment.baseUrl();

  ObservableList<Card> studentsList = ObservableList<Card>();

  Future<dynamic> getAlunos() async {
    print('$baseUrl/aluno/list');
    final http.Response response = await http.post('$baseUrl/aluno/list');
    print(json.decode(response.body));
    return json.decode(response.body);
  }

}
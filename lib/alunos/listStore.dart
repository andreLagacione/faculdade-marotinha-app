import 'package:faculdademarotinhaapp/commons/cardList/models/Card.dart';
import 'package:mobx/mobx.dart';

part 'list_store.g.dart';

class ListStore =_ListStore with _$ListStore;

abstract class _ListStore with Store {

  ObservableList<Card> studentsList = ObservableList<Card>();

}
import 'package:faculdademarotinhaapp/alunos/lista.dart';
import 'package:faculdademarotinhaapp/boletins/lista.dart';
import 'package:faculdademarotinhaapp/cursos/lista.dart';
import 'package:faculdademarotinhaapp/home/build_page.dart';
import 'package:faculdademarotinhaapp/materias/lista.dart';
import 'package:faculdademarotinhaapp/professores/lista.dart';
import 'package:faculdademarotinhaapp/turmas/lista.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        BuildPage('Alunos', AlunoLista(), this._pageController),
        BuildPage('Boletins', BoletimLista(), this._pageController),
        BuildPage('Cursos', CursosLista(), this._pageController),
        BuildPage('Matérias', MateriasLista(), this._pageController),
        BuildPage('Professores', ProfessoresLista(), this._pageController),
        BuildPage('Turmas', TurmasLista(), this._pageController),
      ],
    );
  }
}

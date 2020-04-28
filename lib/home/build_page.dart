import 'package:faculdademarotinhaapp/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {

  final String title;
  final StatelessWidget contentPage;
  final PageController pageController;

  BuildPage(this.title, this.contentPage, this.pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: this.contentPage,
      drawer: Sidebar(this.pageController),
    );
  }
}

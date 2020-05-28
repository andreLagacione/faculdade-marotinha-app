import 'package:faculdademarotinhaapp/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {

  final String title;
  final StatelessWidget contentPage;
  final PageController pageController;
  final Widget createPage;

  BuildPage(this.title, this.contentPage, this.pageController, this.createPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Material(
                color: Colors.transparent, // button color
                child: InkWell(
                  splashColor: Colors.black.withAlpha(0), // inkwell color
                  child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(Icons.add)),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => this.createPage)
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
      body: this.contentPage,
      drawer: Sidebar(this.pageController),
    );
  }
}

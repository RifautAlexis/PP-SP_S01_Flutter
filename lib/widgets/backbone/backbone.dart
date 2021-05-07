import 'package:flutter/material.dart';

class BackboneWidget extends StatelessWidget {
  final Widget body;

  const BackboneWidget({required this.body}) : super();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                iconSize: 20.0,
                splashRadius: 20.0,
                icon: const Icon(Icons.settings),
                onPressed: () => debugPrint("I'm pressed"),
              )
            ],
          ),
        ),
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.greenAccent,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.storage),
              label: "Library",
            ),
          ],
        ),
      ),
    );
  }
}

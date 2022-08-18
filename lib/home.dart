import 'package:facebook/widgets/AppBarButtons.dart';
import 'package:facebook/widgets/sections/status.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            AppBarButtons(
                buttonIcon: Icons.search,
                buttonAction: () {
                  print("Search button is clicked");
                }),
            AppBarButtons(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Chat button is clicked");
              },
            )
          ],
        ),
        body: ListView(children: const [
          StatusSection(),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

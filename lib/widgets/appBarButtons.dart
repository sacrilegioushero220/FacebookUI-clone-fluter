import 'package:flutter/material.dart';

class AppBarButtons extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  const AppBarButtons({required this.buttonIcon, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
          color: Color.fromARGB(223, 219, 226, 230), shape: BoxShape.circle),
      child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            buttonIcon,
            color: Colors.black,
          )),
    );
  }
}

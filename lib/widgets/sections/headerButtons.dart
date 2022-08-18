import 'package:flutter/material.dart';

class HeaderButtons extends StatelessWidget {
  Widget verticalDivider() {
    return const VerticalDivider(
      thickness: 2,
      color: Color.fromARGB(223, 219, 226, 230),
    );
  }

  Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required Function() buttonAction,
    required Color buttoncolor,
  }) {
    return FlatButton.icon(
      label: Text(buttonText),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttoncolor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
              buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Live button is clicked");
              },
              buttoncolor: Colors.red),
          verticalDivider(),
          headerButton(
              buttonText: "Photo",
              buttonIcon: Icons.photo_library,
              buttonAction: () {
                print("Live button is clicked");
              },
              buttoncolor: Colors.green),
          verticalDivider(),
          headerButton(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonAction: () {
                print("Live button is clicked");
              },
              buttoncolor: Colors.purple),
        ],
      ),
    );
  }
}

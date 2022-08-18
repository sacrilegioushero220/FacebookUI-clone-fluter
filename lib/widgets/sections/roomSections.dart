import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          CreateRoomButton(),
          Avatar(displayImage: jb),
          Avatar(displayImage: dq),
          Avatar(displayImage: jeff),
          Avatar(displayImage: kygo),
          Avatar(displayImage: mark),
          Avatar(displayImage: strell),
          Avatar(displayImage: sundar),
        ],
      ),
    );
  }
}

CreateRoomButton() {
  return OutlinedButton.icon(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
      shape: const StadiumBorder(),
      side: BorderSide(
        color: Color(Colors.blue.shade200.value),
        width: 2,
      ),
    ),
    onPressed: () {
      print("Create room button is clicked");
    },
    icon: const Icon(
      Icons.video_call,
      color: Colors.purple,
    ),
    label: const Text(
      "Create \n Room",
      style: TextStyle(color: Colors.blue),
    ),
  );
}

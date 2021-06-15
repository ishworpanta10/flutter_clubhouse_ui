import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/model/room.dart';
import 'package:flutter_clubhouse_ui/model/user.dart';
import 'package:flutter_clubhouse_ui/screens/screens.dart';
import 'package:flutter_clubhouse_ui/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.search,
            size: 28.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope_open,
              size: 26.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              size: 28.0,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: currentUser.imageUrl,
                size: 36.0,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
        children: [
          UpcomingRooms(upcomingRooms: upcomingRoomsList),
        ],
      ),
    );
  }
}

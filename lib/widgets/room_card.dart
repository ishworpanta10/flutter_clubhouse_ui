import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/model/room.dart';
import 'package:flutter_clubhouse_ui/widgets/user_profile_image.dart';

class RoomCard extends StatelessWidget {
  final Room room;
  const RoomCard({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${room.club} 🏠 '.toUpperCase(),
                style: Theme.of(context).textTheme.overline!.copyWith(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                room.name,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 28.0,
                            top: 20.0,
                            child: UserProfileImage(imageUrl: room.speakers[1].imageUrl),
                          ),
                          UserProfileImage(imageUrl: room.speakers[0].imageUrl),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...room.speakers.map(
                          (speaker) => Text(
                            '${speaker.givenName} ${speaker.familyName} 💬',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontSize: 15.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '${room.speakers.length + room.followedBySpeakers.length + room.others.length}',
                                ),
                                const WidgetSpan(
                                  child: Icon(
                                    CupertinoIcons.person_fill,
                                    size: 18.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                TextSpan(text: '/ ${room.speakers.length}'),
                                const WidgetSpan(
                                  child: Icon(
                                    CupertinoIcons.chat_bubble_2_fill,
                                    size: 18.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

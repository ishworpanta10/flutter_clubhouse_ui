import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_clubhouse_ui/model/room.dart';
import 'package:flutter_clubhouse_ui/style/color/custom_colors.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;

  const UpcomingRooms({Key? key, required this.upcomingRooms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 32.0,
        top: 4.0,
        bottom: 4.0,
      ),
      decoration: BoxDecoration(
        color: CustomColor.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: upcomingRooms.map((room) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: room.club.isNotEmpty ? 2.0 : 0,
                  ),
                  child: Text(
                    room.time,
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (room.club.isNotEmpty)
                        Flexible(
                          child: Text(
                            '${room.club} 🏠 '.toUpperCase(),
                            style: Theme.of(context).textTheme.overline!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      Flexible(
                        child: Text(
                          room.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

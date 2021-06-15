import 'package:flutter_clubhouse_ui/model/user.dart';

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

//data
//upcomming room list
const List<Room> upcomingRoomsList = [
  Room(
    club: 'Youth Vision',
    name: 'Discussion on Youth 🔴',
    time: '3:00 PM',
  ),
  Room(
    club: 'New Project Discussion',
    name: 'Welcome to new members👋',
    time: '7:00 PM',
  ),
  Room(
    club: '',
    name: 'Clubhouse Turns 1',
    time: '9:00 PM',
  ),
];

//room list
final List<Room> roomsList = [
  Room(
    club: 'Social Society',
    name: 'Welcome to Clubhouse 🎉 (Walkthrough with Q&A)',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: 'Good Time',
    name: '⏰ A Very Important Person on Good Time',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
  Room(
    club: 'NYU girls roasting tech guys',
    name: 'love and bitcoin edition 💰',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(1, 5).toList(),
    followedBySpeakers: List<User>.from(allUsers)..shuffle(),
    others: List<User>.from(allUsers)..shuffle(),
  ),
];

import 'dailyEntry.dart';

class User{
  String profilbild;
  String email;
  String userName;
  String password;
  DateTime birthday;

List <DailyEntry> diary;

   User({
    required this.profilbild,
    required this.email,
    required this.userName,
    required this.password,
    required this.birthday,
    required this.diary,
  });
}
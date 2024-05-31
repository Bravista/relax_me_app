import '../features/diary/domain/daily_entry.dart';
import '../features/profile/domain/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  User currUser = User(
    email: "curr@email.com",
    userName: "currUser",
    password: "123",
    birthday: DateTime.now(),
    diary: [],
    profilbild: '',
  );

  List<DailyEntry> dailyEntries = [];

  @override
  Future<void> addEntry(DailyEntry entry) async {
    await Future.delayed(const Duration(seconds: 1));
    currUser.diary.add(entry);
  }

  @override
  Future<void> deleteEntry(DailyEntry entry) async {
    await Future.delayed(const Duration(seconds: 1));
    currUser.diary.remove(entry);
  }

  @override
  Future<List<DailyEntry>> getAllDailyEntries() async {
    await Future.delayed(const Duration(seconds: 1));
    return currUser.diary;
  }
}

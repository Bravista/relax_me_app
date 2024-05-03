import 'database_repository.dart';
import '../src/features/settings/domain/dailyEntry.dart';
import '../src/features/settings/domain/user.dart';

class MockDatabase implements DatabaseRepository {
  
  User currUser = User(
    
    email: "curr@email.com",
    userName: "currUser",
    password: "123",
    birthday: DateTime.now(),
    diary: [], profilbild: '',
  );

  List<DailyEntry> dailyEntries = [];
  
  @override
  void addEntry(DailyEntry entry) {
    currUser.diary.add(entry);
    
  }
  
  @override
  void deleteEntry(DailyEntry entry) {
    currUser.diary.remove(entry);
    
  }
  
  @override
  List<DailyEntry> getAllDailyEntries() {
    return currUser.diary;
  }

  
}
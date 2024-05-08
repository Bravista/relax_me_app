import '../src/features/diary/domain/daily_entry.dart';

abstract class DatabaseRepository {
  void addEntry(DailyEntry entry);
  void deleteEntry(DailyEntry entry);
  List<DailyEntry> getAllDailyEntries();
}

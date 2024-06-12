import '../features/diary/domain/daily_entry.dart';

abstract class DatabaseRepository {
  Future<void> addEntry(DailyEntry entry);
  Future<void> deleteEntry(DailyEntry entry);
  Future<List<DailyEntry>> getAllDailyEntries();
}

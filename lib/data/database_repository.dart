 import '../src/features/settings/domain/dailyEntry.dart';

abstract class DatabaseRepository {
  void addEntry(DailyEntry entry);
  void deleteEntry(DailyEntry entry);
  List<DailyEntry> getAllDailyEntries();
}
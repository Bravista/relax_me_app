import 'package:flutter/material.dart';
import 'package:relax_me_app/src/app.dart';
import 'package:relax_me_app/src/data/database_repository.dart';
import 'package:relax_me_app/src/data/mock_database.dart';

void main() {
  DatabaseRepository mockDB = MockDatabase();
  runApp( App(mockDB));
}

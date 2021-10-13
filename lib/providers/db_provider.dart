import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:star_wars_application/models/people_1_model.dart';
import 'package:star_wars_application/models/people_model.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    // If database exists, return database
    if (_database != null) return _database;

    // If database don't exists, create one
    _database = await initDB();

    return _database;
  }

  // Create the database and the Employee table
  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'people_manager.db');

    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute('''CREATE TABLE People(
          id INTEGER PRIMARY KEY,
          url TEXT,
          name TEXT,
          height INT,
          mass INT,
          hairColor TEXT,
          skinColor TEXT,
          eyeColor TEXT,
          birthYear TEXT,
          gender TEXT,
          homeword TEXT,
          films TEXT,
          species TEXT,
          vehicles TEXT,
          starships TEXT,
          created DATETIME,
          edited DATETIME
          )''');
    });
  }

  // Insert employee on database
  createPeople(PeopleModel newPeopleModel) async {
    await deleteAllPeoples();
    final db = await database;
    final res = await db.insert('People', newPeopleModel.toJson());

    return res;
  }

  // Delete all employees
  Future<int> deleteAllPeoples() async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM People');

    return res;
  }

  Future<List<People1Model>> getAllPeoples() async {
    final db = await database;
    final res = await db.rawQuery("SELECT * FROM PEOPLE");

    List<People1Model> list =
        res.isNotEmpty ? res.map((c) => People1Model.fromJson(c)).toList() : [];

    return list;
  }
}

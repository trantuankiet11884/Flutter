import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  static const String DATABASE_NAME = 'my_database.db';
  static Database? _database = null;

  Future<void> initializeDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, DATABASE_NAME);
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE User (
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL,
            email TEXT NOT NULL UNIQUE,
            password TEXT NOT NULL
          )
        ''');
        await db.execute('''
          CREATE TABLE Product (
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL,
            description TEXT NOT NULL,
            image TEXT NOT NULL,
            price REAL NOT NULL
          )
        ''');
        await db.execute('''
          CREATE TABLE Cart (
            id INTEGER PRIMARY KEY,
            user_id INTEGER NOT NULL,
            product_id INTEGER NOT NULL,
            quantity INTEGER NOT NULL,
            FOREIGN KEY(user_id) REFERENCES User(id),
            FOREIGN KEY(product_id) REFERENCES Product(id)
          )
        ''');
        await db.execute('''
          CREATE TABLE Order (
            id INTEGER PRIMARYKEY,
            user_id INTEGER NOT NULL,
            total_price REAL NOT NULL,
            status TEXT NOT NULL,
            FOREIGN KEY(user_id) REFERENCES User(id)
          )
        ''');
      },
    );
  }

  Future<Database?> getDatabase() async {
    if (_database == null) {
      await initializeDatabase();
    }
    return _database;
  }
}

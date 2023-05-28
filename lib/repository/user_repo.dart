import 'package:flutter_application_1/helpers/db_helper.dart';
import 'package:flutter_application_1/models/user.dart';

class UserRepository {
  final DatabaseProvider _databaseProvider;

  UserRepository(this._databaseProvider);

  Future<User?> login(String email, String password) async {
    final db = await _databaseProvider.getDatabase();
    final List<Map<String, dynamic>> maps = await db!.query(
      'User',
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );
    if (maps.length == 0) {
      return null;
    }
    User user = User(
      id: maps[0]['id'],
      name: maps[0]['name'],
      email: maps[0]['email'],
      password: maps[0]['password'],
    );
    return user;
  }

  Future<int> register(String name, String email, String password) async {
    final db = await _databaseProvider.getDatabase();
    int id = await db!.insert(
      'User',
      {'name': name, 'email': email, 'password': password},
    );
    return id;
  }

  Future<User?> getProfile(int userId) async {
    final db = await _databaseProvider.getDatabase();
    final List<Map<String, dynamic>> maps = await db!.query(
      'User',
      where: 'id = ?',
      whereArgs: [userId],
    );
    if (maps.length == 0) {
      return null;
    }
    User user = User(
      id: maps[0]['id'],
      name: maps[0]['name'],
      email: maps[0]['email'],
      password: maps[0]['password'],
    );
    return user;
  }
}

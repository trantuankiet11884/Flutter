import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/repository/user_repo.dart';

class LoginViewModel {
  final UserRepository _userRepository;

  LoginViewModel(this._userRepository);

  Future<User?> login(String email, String password) async {
    User? user = await _userRepository.login(email, password);
    return user;
  }
}

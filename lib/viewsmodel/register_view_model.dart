import 'package:flutter_application_1/repository/user_repo.dart';

class RegisterViewModel {
  final UserRepository _userRepository;

  RegisterViewModel(this._userRepository);

  Future<int> register(String name, String email, String password) async {
    int id = await _userRepository.register(name, email, password);
    return id;
  }
}

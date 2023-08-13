import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/user_model.dart';
import '../../data/repository/user_repository.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepository userRepository;

  LoginCubit({required this.userRepository}) : super(LoginState.initial);

  Future<void> attemptLogin(String username, String password) async {
    emit(LoginState.loading);

    try {
      final UserModel user = await userRepository.loginUser(username, password);
      emit(LoginState.success);
    } catch (error) {
      emit(LoginState.error);
    }
  }
}

enum LoginState { initial, loading, success, error }

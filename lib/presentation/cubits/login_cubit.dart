import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/user_model.dart';
import '../../data/repository/user_repository.dart';
import '../../data/services/api_service.dart';

class LoginCubit extends Cubit<LoginState> {

  final ApiService apiService = ApiService();

  LoginCubit() : super(LoginState.initial);

  Future<void> registerUser(String mobile, String email) async {
    try {
      emit(LoginState.loading);
      final UserModel userModel = await apiService.registerUser(mobile, email);
      if (userModel.status == 0) {
        emit(LoginState.error);
      } else {
        emit(LoginState.success);
      }
    } catch (e) {
      emit(LoginState.error);
    }
  }
}

enum LoginState { initial, loading, success, error }

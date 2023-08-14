import 'dart:async';
import 'package:bloc/bloc.dart';

import '../../data/model/user_model.dart';
import '../../data/repository/user_repository.dart';
import '../cubits/login_cubit.dart';

// Events
abstract class LoginEvent {}

class AttemptLoginEvent extends LoginEvent {
  final String username;
  final String password;

  AttemptLoginEvent({required this.username, required this.password});
}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;

  LoginBloc({required this.userRepository}) : super(LoginState.initial);

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is AttemptLoginEvent) {
      yield LoginState.loading;
      try {
        final AuthModel user = await userRepository.loginUser(event.username, event.password);
        yield LoginState.success;
      } catch (error) {
        yield LoginState.error;
      }
    }
  }
}

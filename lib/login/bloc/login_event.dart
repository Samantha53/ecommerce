part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginAccount extends LoginEvent{
  LoginAccount({
    required this.email,
    required this.password
  });
    String email;
    String password;
}
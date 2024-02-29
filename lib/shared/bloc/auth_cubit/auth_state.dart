part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class ObsecureState extends AuthState {}

final class VAlidateState extends AuthState {}

class LoginLodingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class LoginFailureState extends AuthState {
  final String err;

  LoginFailureState({required this.err});
}

class RegisterLodingState extends AuthState {}

class RegisterSuccessState extends AuthState {}

class RegisterFailureState extends AuthState {
  final String err;

  RegisterFailureState({required this.err});
}

class UpdateProfileLoadingState extends AuthState {}

class UpdateProfileSuccessState extends AuthState {}

class UpdateProfileFailureState extends AuthState {
  final String errMessage;
  UpdateProfileFailureState({required this.errMessage});
}

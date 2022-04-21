part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// inisialisasi utk auth cubit
class AuthInitial extends AuthState {}

// auth pada saat loading
class AuthLoading extends AuthState {}

// ketika success melakukan auth
class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  @override
  // jika berhasil akan mengembalikan user
  List<Object> get props => [user];
}

// ketika failed melakukan auth
class AuthFailed extends AuthState {
  final UserModel error;

  AuthFailed(this.error);

  @override
  // jika berhasil akan mengembalikan error
  List<Object> get props => [error];
}

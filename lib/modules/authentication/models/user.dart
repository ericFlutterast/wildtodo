//абстрактный класс юзера
abstract interface class User {
  const factory User.notAuthenticatedUser() = NotAuthenticatedUser;

  const factory User.authenticatedUser({
    required final String lastName,
    required final String email,
    required final String fistName,
    required final String phoneNumber,
    required final String photoUrl,
    required final String uid,
  }) = AuthenticatedUser;

  bool get isAuthenticated;
  bool get isNotAuthenticated;
  User? get authenticatedOrNull;

  T when<T extends Object?>({
    required final Function(AuthenticatedUser user) authenticated,
    required final Function() notAuthenticated,
  });
}

//реализация не аунтифицированного пользователя
class NotAuthenticatedUser implements User {
  const NotAuthenticatedUser();

  @override
  bool get isAuthenticated => false;

  @override
  bool get isNotAuthenticated => true;

  @override
  User? get authenticatedOrNull => null;

  @override
  T when<T extends Object?>({
    required Function(AuthenticatedUser user) authenticated,
    required Function() notAuthenticated,
  }) =>
      notAuthenticated();
}

//реализация аунтифицированного пользователя
class AuthenticatedUser implements User {
  final String fistName;
  final String lastName;
  final String phoneNumber;
  final String uid;
  final String photoUrl;
  final String email;

  const AuthenticatedUser({
    required this.lastName,
    required this.email,
    required this.fistName,
    required this.phoneNumber,
    required this.photoUrl,
    required this.uid,
  });

  @override
  bool get isAuthenticated => !isNotAuthenticated;

  @override
  bool get isNotAuthenticated => uid.isEmpty;

  @override
  User? get authenticatedOrNull => this;

  @override
  T when<T extends Object?>({
    required Function(AuthenticatedUser user) authenticated,
    required Function() notAuthenticated,
  }) =>
      authenticated(this);
}

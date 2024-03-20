class User {
  final String firstname;
  final String lastName;
  final String phoneNumber;

  const User({
    required this.firstname,
    required this.lastName,
    required this.phoneNumber,
  });

  factory User.notAuthenticated() => const User(
        firstname: '',
        lastName: '',
        phoneNumber: '',
      );
}

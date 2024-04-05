abstract interface class IProfileChangeDataRepo {
  Future<void> updatePassword({required final String password});
  Future<void> updateEmail({required final String email});
  Future<void> changeName({required final String name});
  Future<void> changeSex({required final int sex});
}

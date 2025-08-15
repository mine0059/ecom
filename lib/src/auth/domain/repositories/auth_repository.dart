import '../../../../core/common/entities/user.dart';

abstract class AuthRepository {
  Future<void> register({
    required String name,
    required String password,
    required String email,
    required String phone,
  });

  Future<User> login({required String email, required String password});

  Future<void> forgotPassword(String email);

  Future<void> verifyOTP({required String email, required String otp});

  Future<void> resetPassword({
    required String email,
    required String newPassword,
  });

  Future<void> verifyToken();
}

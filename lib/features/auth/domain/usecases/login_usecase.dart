import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  // نحقن الـ Repository هنا (Dependency Injection)
  LoginUseCase(this.repository);

  // نستخدم دالة call لنجعل هذا الكلاس يُستدعى كأنه دالة
  Future<UserEntity> call(String email, String password) {
    return repository.login(email, password);
  }
}
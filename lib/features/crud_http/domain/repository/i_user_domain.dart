import 'package:ai_application_dct/features/crud_http/domain/entities/user_model.dart';

abstract class UserDomainRepo {
  Future<User> getUser({required String userID});

  Future<List<User>> getUsers();

  Future<bool> deleteUser({required String userID});
}

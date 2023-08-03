import 'package:ai_application_dct/features/crud_http/data/repository/data_repo.dart';
import 'package:ai_application_dct/features/crud_http/domain/entities/user_model.dart';
import 'package:ai_application_dct/features/crud_http/domain/repository/i_user_domain.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_access_pod.g.dart';

final userRepoProvider =
    Provider<UserDomainRepo>((ref) => UserRepositoryImpl(ref));

// @riverpod
// class HttpRequests extends _$HttpRequests {
//   @override
//   Future<User> build() async{
//     return User();
//   }
//
//   void setData({required User value}) {
//     state = value;
//   }
//
//   void getUser(){
//     final value = ref.watch(userRepoProvider).getUser();
//     state = value;
//   }
// }

@riverpod
class UserRequest extends _$UserRequest {
  @override
  FutureOr<User> build() async {
    return const User(userID: "N/A", name: "N/A", age: -1);
  }

  void getUser({required String userID}) async {
    state = await AsyncValue.guard(() async {
      return ref.watch(userRepoProvider).getUser(userID: userID);
    });
  }
}

@riverpod
class UsersRequest extends _$UsersRequest {
  @override
  FutureOr<List<User>> build() async {
    return ref.watch(userRepoProvider).getUsers();
  }

  void getUsers() async {
    state = await AsyncValue.guard(() async {
      return ref.watch(userRepoProvider).getUsers();
    });
  }

  void deleteUser({required String userID}) async {
    ref.read(userRepoProvider).deleteUser(userID: userID);
    state = await AsyncValue.guard(() async {
      return ref.watch(userRepoProvider).getUsers();
    });
  }
}

@riverpod
String getTextController(GetTextControllerRef ref) {
  return "";
}

import 'package:ai_application_dct/core/internet_services/http_client.dart';
import 'package:ai_application_dct/features/crud_http/domain/entities/user_model.dart';
import 'package:ai_application_dct/features/crud_http/presentation/pod/http_access_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HttpAccess extends ConsumerWidget {
  const HttpAccess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersObj = ref.read(usersRequestProvider.notifier);
    final userObj = ref.read(userRequestProvider.notifier);
    String userID = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP module"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final users = ref.watch(usersRequestProvider);
                return users.when(data: (user) {
                  return Container(
                    color: Colors.red,
                    child: ListView.builder(
                        itemCount: user.length,
                        itemBuilder: (context, index) => Column(
                              children: user
                                  .map<Widget>((e) => ListTile(
                                        title: Text(e.name),
                                        subtitle: Text(e.userID),
                                      ))
                                  .toList(),
                            )),
                  );
                }, error: (err, stack) {
                  return const Text("error");
                }, loading: () {
                  return const CircularProgressIndicator();
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              usersObj.getUsers();
            },
            child: Text("Load Data"),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final user = ref.watch(userRequestProvider);
                return Column(
                  children: [
                    user.when(
                        data: (user) {
                          return Column(
                            children: [
                              // get Single User
                              Container(
                                color: Colors.green,
                                child: Column(
                                  children: [
                                    Text(user.name ?? 'N/A'),
                                    Text('${user.age ?? -1}'),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        error: (err, stack) {
                          print(err);
                          return const Text('error');
                        },
                        loading: () => const CircularProgressIndicator()),
                    child!,
                  ],
                );
              },
              child: Column(
                children: [
                  TextField(
                      onChanged: (value) =>
                          // ref.read(getTextControllerProvider),
                          userID = value),
                  ElevatedButton(
                      onPressed: () {
                        // HttpClientObj.instance.loadApi();
                        userObj.getUser(userID: userID);
                        // userID: ref.watch(getTextControllerProvider));
                      },
                      child: const Text("get User")),
                  ElevatedButton(
                      onPressed: () {
                        // HttpClientObj.instance.loadApi();
                        usersObj.deleteUser(userID: userID);
                      },
                      child: const Text("Delete User")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

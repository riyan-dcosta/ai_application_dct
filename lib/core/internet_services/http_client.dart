import 'dart:convert';

import 'package:ai_application_dct/core/internet_services/http_models.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class HttpClientObj {
  HttpClientObj._();

  static final instance = HttpClientObj._();

  Future<void> loadApi() async {
    var url = Uri.https(
      '64c9edf1b2980cec85c28ce9.mockapi.io',
    );
    var resp = await http.get(url);
    var response =
        await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    print(await http.read(Uri.https('example.com', 'foobar.txt')));
  }

  Future<void> tryApi() async {
    var client = http.Client();
    try {
      var response = await client.post(
          Uri.https('example.com', 'whatsit/create'),
          body: {'name': 'doodle', 'color': 'blue'});
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      var uri = Uri.parse(decodedResponse['uri'] as String);
      print(await client.get(uri));
    } finally {
      client.close();
    }
  }

  Future<void> retryApi() async {
    final client = RetryClient(http.Client());
    try {
      print(await client.read(Uri.http('example.org', '')));
    } finally {
      client.close();
    }
  }

  /// get
  Future<http.Response> getApi(
      {required String domainName, required String path}) async {
    var url = Uri.https(domainName, path);
    var resp = await http.get(url);
    return resp;
  }

  /// put

  /// post

  /// delete
  Future<http.Response> deleteApi({required String domainName, required String path})async{
    var url = Uri.https(domainName, path);
    var resp = await http.delete(url);
    return resp;
 }
}

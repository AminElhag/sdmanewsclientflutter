import 'package:http/http.dart' as http;

typedef ResSuccess = Future<void> Function(http.Response);
typedef ResFailure = Future<void> Function(dynamic);

class ServiceCall {
  static void get(
    Map<String, dynamic> parameter,
    String path, {
    bool isTokenApi = false,
    ResSuccess? withSuccess,
    ResFailure? withFailure,
  }) {
    Future(() {
      try {
        var headers = {
          "Content-Type": "application/json",
          'accept': 'application/json; charset=UTF-8'
        };
        if (isTokenApi) {}
        print(Uri.parse(path).replace(queryParameters: parameter));
        print(headers);
        http
            .get(Uri.parse(path).replace(queryParameters: parameter),
                headers: headers)
            .timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            throw Exception("Request Time out");
          },
        ).then(
          (value) {
            try {
              if (withSuccess != null) withSuccess(value);
            } catch (e) {
              if (withFailure != null) withFailure(e.toString());
            }
          },
        ).catchError((e) {
          if (withFailure != null) withFailure(e.toString());
        });
      } catch (e) {
        if (withFailure != null) withFailure(e.toString());
      }
    });
  }
}

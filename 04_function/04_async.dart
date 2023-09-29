import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> args) {
  // then
  // Future getIp() {
  //   final url = Uri.https(
  //     'www.httpbin.org',
  //     '/ip',
  //   );

  //   return http.get(url).then((res) {
  //     print(res.body);
  //     String ip = jsonDecode(res.body)['origin'];
  //     return ip;
  //   });
  // }

  // getIp().then((value) => print(value)).catchError((err) {
  //   print(err);
  // });

  // async await

  Future getIp() async {
    final url = Uri.http(
      'www.httpbin.org',
      '/ip',
    );

    final res = await http.get(url);
    String ip = jsonDecode(res.body)['origin'];
    return ip;
  }

  getAddress() async {
    try {
      final ip = await getIp();
      print('ip $ip');
    } catch (err) {
      print('err $err');
    }
  }

  getAddress();
}

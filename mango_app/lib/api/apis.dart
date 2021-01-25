import 'package:http/http.dart' as http;

Future<dynamic> lambdaInvoke() async {
  http.Response response;
  try {
    response = await http.get(
      'https://6dwvd3miah.execute-api.us-east-1.amazonaws.com/hml/user/test',
      headers: Map<String, String>.from(
          {'X-API-KEY': 'EOgNB2Snek6PnMo1I61Gh7SgjhHUOAYJS3BjL579'}),
    );
  } catch (e) {
    print(e.stackTrace);
  }
  print(response.body);
}

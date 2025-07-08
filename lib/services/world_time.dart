import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;
  bool isDaytime = true;

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
    re
  });

  Future<void> getTime() async {
    try {
      final uri = Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=$url');
      http.Response response = await http.get(uri);

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        DateTime now = DateTime.parse(data['dateTime']);

        isDaytime = now.hour > 6 && now.hour < 15 ? true : false;
        time = DateFormat('EEEE, MMMM d, y - h:mm a').format(now);
        print(time);
      } else {
        time = 'Failed to get time: ${response.statusCode}';
        print(time);
      }
    } catch (e) {
      time = 'caught error: $e';
      print(time);
    }
  }
}
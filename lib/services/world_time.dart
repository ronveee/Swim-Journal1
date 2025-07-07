import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location; //location name for the ui
  String time; // the time in that location
  String flag;// url asset flag icon
  String url; //location url for api endpoint

  void getTime() async {

    //make the request
    Response response = await get (Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=/$url'),);
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset = data['uts_offset'].substring(1,3);
    //print(datetime);
    //print(offset);

    //create Datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours:int.parse(offset)));

    time = now.toString();

  }
}
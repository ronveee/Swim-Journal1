import 'package:flutter/material.dart';
import 'package:swim_journal_1/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      location: 'London',
      flag: 'uk.jpg',
      url: 'Europe/London',
    );

    await instance.getTime();

    Navigator.pushReplacementNamed(
           context, '/home',
           arguments: {
             'location': instance.location,
             'flag': instance.flag,
             'time': instance.time,
             'isDaytime': instance.isDaytime,
           },
         );
  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitWanderingCubes(
          color: Colors.white,
          size: 75.0,
        ),

      ),
    );
  }
}
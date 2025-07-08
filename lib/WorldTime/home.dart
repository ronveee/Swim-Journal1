import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map? ?? {};
    print(data);

    //set background
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.png';
    Color bgColor = data['isDaytime']  ? Colors.blue : Colors.indigo[700]!;

    // Safely split the full time string
    String fullTime = data['time'] ?? '';
    String displayDate = '';
    String displayTime = '';

    if (fullTime.contains(' - ')) {
      List<String> parts = fullTime.split(' - ');
      displayDate = parts[0]; // Monday, July 7, 2025
      displayTime = parts[1]; // 11:00 PM
    } else {
      displayTime = fullTime;
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result ['time'],
                        'location': result['location'],
                        'flag': result['flag'],
                        'isDaytime': result ['isDaytime']
                      };
                    });
                  },
                  icon: const Icon(Icons.edit_location, color: Colors.white),
                  label: const Text(
                    'Edit Location',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${data['location'] ?? 'Location'}',
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  displayTime,
                  style: const TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
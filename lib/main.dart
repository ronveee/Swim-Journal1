import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Profile ()
  ));
}

class Profile extends StatelessWidget{
  const Profile({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.blue.shade600,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Swim Journal",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),

                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Just like life, swimming is about learning to be calm in deep waters.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "When the world feels heavy, the water lifts me.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 100,
                      margin: EdgeInsets.symmetric(vertical: 30),
                        child:
                        ElevatedButton(onPressed: (){},
                          child: Row (
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit, color: Colors.blue),
                              Text ('Open',
                                style: TextStyle(color: Colors.blue)),
                              ],
                          )
                        ),

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
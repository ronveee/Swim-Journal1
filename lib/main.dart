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
      appBar: AppBar(
        title: Text('Swim Journal'),
        backgroundColor: Colors.blue[200],
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'User Profile',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10), // Optional spacing between text and icon
                Center(
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.blue[100],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                Text('Veronica Bancoro',
                  style: TextStyle(fontStyle: FontStyle.italic),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                Text('veronicabancoro@gmail.com',
                  style: TextStyle(fontStyle: FontStyle.italic),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Company:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                Text('BSU',
                  style: TextStyle(fontStyle: FontStyle.italic),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact No.:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                Text('09876543211',
                  style: TextStyle(fontStyle: FontStyle.italic),),
              ],
            ),
          ),
           Center(
            child: Container(
              width: 300,
              margin: EdgeInsets.symmetric(vertical: 30),
                  child:
                  ElevatedButton(onPressed: (){},
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.logout, color: Colors.blue),
                        Text ('Logout',
                          style: TextStyle(color: Colors.blue)),
                      ],
                    )
                  ),
              ),
            ),

        ],
      ),

    );
  }
}
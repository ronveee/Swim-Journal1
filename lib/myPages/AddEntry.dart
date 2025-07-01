import 'package:flutter/material.dart';

class Addentry extends StatefulWidget {
   const Addentry({super.key});

   @override
   State<Addentry> createState() => _AddentryState();
 }

 class _AddentryState extends State<Addentry> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _description = '';
  double _time = 0.0;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue[100],
         title:Text('Swim Journal', style: TextStyle(
             fontSize: 20,
             color: Colors.white
         ),),
       ),
       body: Container(
         margin: EdgeInsets.all(20),
          child: Form(
              key: _formKey,
            child:Column(
              children: [
                Text('Add Entry', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:'Name',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(14)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please add a name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:'Description',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(14)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(14)
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please add a description';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText:'Time',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(14)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(14)
                    ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please add a time';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(vertical:15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:[
                      FilledButton(
                        onPressed: (){
                          if (_formKey.currentState!.validate()){
                            print('The form is validated');
                          }
                        },
                        child: Text('Submit'),
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue[300],
                        ),

                      ),
                    ],
                  ),

                )



             ],
            )
          ),
       ),

     );
   }
 }

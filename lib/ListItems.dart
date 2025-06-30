import 'package:flutter/material.dart';
import 'package:swim_journal_1/myPages/ItemCard.dart';

import 'myPages/Pools.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();

}

class _ListItemsState extends State<ListItems> {

  List<Pools> pools = [
    Pools(name: 'Infinity', description: 'Big', time: 3),
    Pools(name: 'Training', description: 'Big', time: 3),
    Pools(name: 'Infinity', description: 'Small', time: 4),
    Pools(name: 'Natural', description: 'Big', time: 3),
    Pools(name: 'Indoor', description: 'Small', time: 2)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Swim Journal', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Colors.blue[100],

        ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Entries',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: pools.map((pool) {
                  return ItemCard(pool: pool);
                }).toList(),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
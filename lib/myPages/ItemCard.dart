import 'package:flutter/material.dart';

import 'Pools.dart';




class ItemCard extends StatelessWidget {
    final Pools pool;
    const ItemCard({
      super.key,
      required this.pool
    });

    @override
    Widget build(BuildContext context) {
      return Center(

        child: Card(
          child: Container(
            width: 300,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        pool.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(pool.time.toString(),
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue)
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    pool.description,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
          ),
        ),

      );
    }

  }


import 'package:flutter/material.dart';
import 'package:swim_journal_1/ListItems.dart';
import 'package:swim_journal_1/myPages/AddEntry.dart';
import 'package:swim_journal_1/myPages/dashboard.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => ListItems(),
      '/add': (context) => Addentry(),

    },

  ));
}




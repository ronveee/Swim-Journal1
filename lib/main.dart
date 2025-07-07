import 'package:flutter/material.dart';
import 'package:swim_journal_1/WorldTime/choose_location.dart';
import 'package:swim_journal_1/myPages/ListItems.dart';
import 'package:swim_journal_1/myPages/AddEntry.dart';
import 'package:swim_journal_1/myPages/dashboard.dart';


import 'package:swim_journal_1/WorldTime/home.dart';
import 'package:swim_journal_1/WorldTime/loading.dart';
import 'package:swim_journal_1/WorldTime/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/dashboard': (context) => dashboard(),
      '/add': (context) => Addentry(),

      //World Time
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),

    },

  ));
}








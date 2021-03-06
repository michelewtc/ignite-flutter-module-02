import 'package:flutter/material.dart';
import 'package:notes/modules/home/home_page.dart';
import 'package:notes/modules/notes/create_note_page.dart';

class AppRoutes {
  static String homePage = "/home";
  static String creteNotePage = "/create-note";

  static String initialRoute = homePage;

  static Map<String, Widget Function(BuildContext)> namedRoutes() => {
        homePage: (context) => HomePage(),
        creteNotePage: (context) => CreateNotePage(),
      };
}

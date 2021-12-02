import 'package:flutter/material.dart';
import 'home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){

        return MaterialPageRoute(
            builder: (context) => Home(),
        );

  }
}
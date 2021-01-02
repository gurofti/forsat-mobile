import 'package:flutter/material.dart';
import 'package:forsat/router/router.dart';
import 'package:forsat/router/route_constants.dart';

void main() {
  runApp(Forsat());
}

class Forsat extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forsat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routers.onGenerateRoute,
      initialRoute: homeRoute,
    );
  }
}

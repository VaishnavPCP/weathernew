import 'package:flutter/material.dart';
import 'package:weathernew/frontpage.dart';

void main() {
  runApp(const Weather());
}
class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Frontpage(),
    );
  }
}

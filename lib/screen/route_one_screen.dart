import 'package:flutter/material.dart';
import 'package:navigator_example/layoutr/main_layout.dart';
import 'package:navigator_example/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int number;

  const RouteOneScreen({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Route One',
      children: [
        Text(
          'argument : ${number.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('Pop!'),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  // argument 사용하여 다른 화면 이동시 값 전달
                  builder: (context) => RouteTwoScreen(),
                  settings: RouteSettings(
                    arguments: 789,
                  ),
                ),
              );
            },
            child: Text('Route Two Screen')),
      ],
    );
  }
}
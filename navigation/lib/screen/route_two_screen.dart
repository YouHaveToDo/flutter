import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_three_screen.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      children: [
        Text(
          'arguments: $arguments',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 999,
            );
          },
          child: Text('Push Named'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(
              '/three',
            );
          },
          child: Text('data'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/three',
              (route) => route.settings.name == '/',
            );
          },
          child: Text('Push And Remove Until'),
        )
      ],
      title: 'Route two',
    );
  }
}

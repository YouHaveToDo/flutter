import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.red,
                    ),
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.5,
                      height: 50.5,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

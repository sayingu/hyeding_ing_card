import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String asset1 = 'images/hyeding_ing_1.jpg';
  String asset2 = 'images/hyeding_ing_2.jpg';
  void updateAssetRandomly() {
    setState(() {
      asset1 = 'images/hyeding_ing_${Random().nextInt(4) + 1}.jpg';
      asset2 = 'images/hyeding_ing_${Random.secure().nextInt(4) + 5}.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 70,
                foregroundImage: AssetImage('images/hyeding_ing_profile.jpg'),
              ),
              const Text(
                '윤서화',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Orbit',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '2001.12.13, 170cm',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    fontFamily: 'Orbit'),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                child: ListTile(
                    leading: Icon(
                      Icons.photo_camera,
                      color: Colors.teal.shade400,
                      size: 30,
                    ),
                    title: Text(
                      'hyeding_ing',
                      style: TextStyle(
                          color: Colors.teal.shade400,
                          fontSize: 20,
                          fontFamily: 'Orbit',
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(50, 15, 50, 0),
                child: ListTile(
                    leading: Icon(
                      Icons.add_a_photo,
                      color: Colors.teal.shade400,
                      size: 30,
                    ),
                    title: Text(
                      'hyeji_vely',
                      style: TextStyle(
                          color: Colors.teal.shade400,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(40, 15, 40, 0),
                height: 190,
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: updateAssetRandomly,
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.padded),
                        child: Image.asset(asset1),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: updateAssetRandomly,
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Image.asset(asset2),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

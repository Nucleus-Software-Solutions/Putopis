// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseDatabase database = FirebaseDatabase.instance;

  DatabaseReference ref = database.ref("cities");
  final snapshot = await ref.get();
  final data = (snapshot.value as dynamic);

  final List<City> cities = data.entries
      .map<City>(
        (x) => City(
          name: (x.value as dynamic)['name'],
        ),
      )
      .toList();

  for (final city in cities) {
    print(city.name);
  }

  runApp(const MainApp());
}

class City {
  final String name;

  City({
    required this.name,
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Text(
            'Hello World!',
          ),
        ),
      ),
    );
  }
}

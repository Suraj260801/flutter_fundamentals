import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:research/local_db/hive/person.dart';

Future<void> main() async {
  await Hive.initFlutter();

  await Hive.openBox('person');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String enteredName = '';
  final PersonDb personDb = PersonDb();
  final _myBox = Hive.box('person');
   @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _myBox.close();
  }
  @override
  void initState() {
    super.initState();

    if (_myBox.get('PEOPLES') == null) {
      personDb.initData();
    } else {
      personDb.loadData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              // Update the enteredName variable as the user types
              setState(() {
                enteredName = value;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Enter your name',
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              personDb.persons?.add(enteredName);
              personDb.updateData();
            },
            child: const Text('Save Name'),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              String? name = personDb.persons?[index];
              return ListTile(
                title: Text('$name'),
              );
            },
            itemCount: personDb.persons?.length,
          ))
        ],
      ),
    );
  }
}

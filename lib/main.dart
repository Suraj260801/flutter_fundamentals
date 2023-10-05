import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:research/blocks/internet_bloc/internet_bloc.dart';
import 'package:research/blocks/internet_bloc/internet_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<InternetBloc>(
      create: (BuildContext context) => InternetBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing'),
      ),
      body: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
          builder: (BuildContext context, state) {
            if (state is InternetGainedState) {
              return const Text(
                'Connected',
                style: TextStyle(fontSize: 40),
              );
            } else if (state is InternetLostState) {
              return const Text('Not Connected',
                  style: TextStyle(fontSize: 40));
            } else {
              return const Text('Loading...', style: TextStyle(fontSize: 40));
            }
          },
          listener: (BuildContext context, InternetState state) {
            if (state is InternetGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Device Connected to Internet ',
                    style: TextStyle(fontSize: 15)),backgroundColor: Colors.green,
              ));
            }else if(state is InternetLostState){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Device Not Connected to Internet',
                    style: TextStyle(fontSize: 15)),backgroundColor: Colors.red,
              ));
            }
          },
        ),
      ),
    );
  }
}

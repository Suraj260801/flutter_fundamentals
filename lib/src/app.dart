import 'package:flutter/material.dart';
import 'package:research/src/blocs/bloc.dart';

class App extends StatelessWidget {
   App({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Architecture'),
      ),
      body: Container(
        child: const Column(
          children: [
            EmailField(),
            PasswordField(),
            SubmitButton(),
          ],
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(hintText: 'email', labelText: 'Email Address'),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: 'password', labelText: 'Password'),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
      child: const Text('Submit'),
    );
  }
}

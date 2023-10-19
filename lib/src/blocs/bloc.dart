import 'dart:async';

import 'package:research/src/blocs/validators.dart';

class Bloc extends Validators{
  final StreamController<String> _emailController=StreamController<String>();
  final StreamController<String> _passwordController=StreamController<String>();

  //Add data to Stream
  Stream<String> get emailErrorText=>_emailController.stream.transform(validateEmail);
  Stream<String> get passwordErrorText=> _passwordController.stream.transform(validatePassword);

  //Change data
  Function(String) get changeEmail=>_emailController.sink.add;
  Function(String) get changePassword=>_passwordController.sink.add;

  dispose(){
    _emailController.close();
    _passwordController.close();
  }

}
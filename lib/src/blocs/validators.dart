import 'dart:async';

class Validators{
  final validateEmail=StreamTransformer<String,String>.fromHandlers(
    handleData: (email,sink){
      if(email.contains('@')&&email.contains('.com')){
        sink.add(email);
      }else{
        sink.addError('Please Enter valid Email');
      }
    }
  );
  final validatePassword=StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if(password.length==4){
          sink.add(password);
        }else{
          sink.addError('Please Enter valid Password');
        }
      }
  );
}
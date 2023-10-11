import 'package:logger/logger.dart';

class Logs{
   static Logger log=Logger();
   static print(dynamic message){
     log.d(message);
   }
}
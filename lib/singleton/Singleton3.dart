class Singleton3{
   static Singleton3? _instance;

   Singleton3._internal(){
      print('Singleton3 instance created');
   }
   //factory constructor
    factory Singleton3(){
      _instance??=Singleton3._internal();
      return _instance!;
    }
}
class Singleton2{
  static Singleton2? _instance;

  Singleton2._internal(){
    print("Singleton2 instance created");
  }

  static Singleton2 get instance{
    _instance??=Singleton2._internal();
    return _instance!;
  }


}
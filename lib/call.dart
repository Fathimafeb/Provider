import 'package:flutter/foundation.dart';

class Counterprovider with ChangeNotifier{
  int count = 0;
  int get _Count => count;

  void increment (){
    count++ ;
    notifyListeners();
  }
  void decrement(){
    count--;
    notifyListeners();
  }


}


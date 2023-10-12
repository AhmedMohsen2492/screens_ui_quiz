import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  int MoodyCurrentIndex = 0;

  int NewsCurrentIndex = 1;
  bool discoverSelected = false;
  bool newsSelected = false;
  bool mostViewedSelected = false;
  bool savedSelected = false;

  int WorkoutCurrentIndex = 0;

  changeMoodyCurrentIndex(int index){
    MoodyCurrentIndex = index ;
    notifyListeners();
  }

  changeNewsCurrentIndex(int index){
    NewsCurrentIndex = index ;
    notifyListeners();
  }

  changeDiscoverSelectedValue(bool value){
    discoverSelected = value ;
    notifyListeners();
  }

  changeNewsSelectedValue(bool value){
    newsSelected = value ;
    notifyListeners();
  }

  changeMostViewedSelectedValue(bool value){
    mostViewedSelected = value ;
    notifyListeners();
  }

  changeSavedSelectedValue(bool value){
    savedSelected = value ;
    notifyListeners();
  }

  changeWorkoutCurrentIndex(int index){
    WorkoutCurrentIndex = index ;
    notifyListeners();
  }
}


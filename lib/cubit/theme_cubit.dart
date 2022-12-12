import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  bool them = true;

  void changeTheme() {
    them = !them;
    emit(them ? ThemeMode.light : ThemeMode.dark);
  }

  void setTheme(bool newTheme) {
    them = newTheme;
    emit(them ? ThemeMode.light : ThemeMode.dark);
  }

  bool getTheme() {
    return them;
  }
}

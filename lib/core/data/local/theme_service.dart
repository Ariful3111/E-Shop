import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'theme_mode';
  Future<void> saveThemeToStorage(bool value) async {
    await _box.write(_key, value);
  }

  ThemeMode getThemeMode() {
    final value = _box.read(_key);
    if (value == 'dark') return ThemeMode.dark;
    if (value == 'light') return ThemeMode.light;
    return ThemeMode.system;
  }

  void saveThemeMode(ThemeMode mode) {
    if (mode == ThemeMode.dark) {
      _box.write(_key, 'dark');
    } else if (mode == ThemeMode.light) {
      _box.write(_key, 'light');
    } else {
      _box.write(_key, 'system');
    }
  }

  // bool getIsDark() {
  //   final storeTheme = _box.read<bool>(_key);
  //   return storeTheme ?? false;
  // }
}

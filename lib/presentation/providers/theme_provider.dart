import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//un simple bool
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

//un objeto de tipo AppTheme

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  //state = estado = new AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void cambiarColor(int index) {
    state = state.copyWith(selectedColor: index);
  }
}

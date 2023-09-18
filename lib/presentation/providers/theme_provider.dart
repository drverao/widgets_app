import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//un simple bool
final isDarkmodeProvider = StateProvider<bool>((ref) => false);

// listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//un simple entero
final selectedColorProvider = StateProvider<int>((ref) => 0);

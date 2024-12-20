import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);
// Provider lo crea "inmutable", no lo puedo cambiar pero vamos a poder acceder
// a través del ref desde cualquier lado

// Un simple boolean
final isDarkModeProvider = StateProvider((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo AppTheme (custom)
// StateNotifierProvider<Null, Object?> primero el nombre de la clase que quiero que controle el estado
// y el segundo el estado que vamos a  tener
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(), //primera instancia de themenotifier
);

/*
Resumen:
  * Provider para valores inmutables
  * StateProvider para mantener una pieza de estado
  * StateNotifierProvider para mantener también un estado pero cuando el objeto
  es un poco más elaborado
 */

class ThemeNotifier extends StateNotifier<AppTheme> {
  //mantiene un estado en particular
  //en este caso quiero mantener una instancia de mi apptheme
  ThemeNotifier() : super(AppTheme());
  //creo una instancia de apptheme con los valores por defecto
  //si hacemos:
  /*
  void algo (){
    state.  me habilita 
    todo lo que existe dentro de appTheme
    isDarkMode, selectedColor, etc. 
  }
   */

  void toggleDarkMode() {}

  void changeColorIndex(int colorIndex) {}
}

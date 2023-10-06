import 'package:shared_preferences/shared_preferences.dart';

class PrefernciaUsuario {
  static final PrefernciaUsuario _instancia = PrefernciaUsuario._internal();

  factory PrefernciaUsuario() {
    return _instancia;
  }

  PrefernciaUsuario._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  int get numero {
    return _prefs.getInt('numero') ?? 0;
  }

  set numero(int value) {
    _prefs.setInt('numero', value);
  }

  String get nombre{
    return _prefs.getString('nombre') ?? '';
  }

  set nombre(String value){
     _prefs.setString('nombre', value);
  }

  set ubi(bool value) {
    _prefs.setBool('numero', value);
  }

  bool get ubi{
    return _prefs.getBool('ubi') ?? false;
  }
  String get ultimapagina{
    return _prefs.getString('ultimapagina') ?? 'home';
  }

  set ultimapagina(String value){
     _prefs.setString('ultimapagina', value);
  }
}

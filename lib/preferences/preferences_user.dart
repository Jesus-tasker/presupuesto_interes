//este codigo ya esta prehecho para que solo podamos acceder a los datos que nos interesa

/*
  Recordar instalar el paquete de:
    shared_preferences:

  Inicializar en el main
    final prefs = new PreferenciasUsuario();
    await prefs.initPrefs();
    
    Recuerden que el main() debe de ser async {...

*/

import 'dart:ffi';

import 'package:pruebas3_deudores/pagues/models/deuda_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();
  SharedPreferences? _prefs;

//inicia la busqueda de preferncas
  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }
/*
  // GET y SET del tokken auth user
  List<String> get lista_deudores {
     return _prefs?.getStringList('token') ?? [];
  }
  set lista_deudores(String value) {
    _prefs?.setStringList(key, value)('token', value);
  }
  */

}

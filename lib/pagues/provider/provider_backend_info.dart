import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //version 12 para que funcione

class Provider_backend {
  void guardar_clienteen_backend(var json) async {
    var headers = {'Content-Type': 'text/plain'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'http://salonhousev.herokuapp.com/deudas')); //ene ste caso una direccion de una api creada por mi en la cual obtengo el json
    request.body = json as String;
    //  '''{\r\n   "deuda":[{"cliente":{"cedula":"123456","nombre":"jesus","telefono":3212125959,"direccion":"cra10 1234" },\r\n       "finanzas":{"fechainicio":"05/09/2021","prestamoinicial":80000,"deudapendiente":true,"interes":10}}]\r\n \r\n  \r\n  \r\n}''';
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
      //
    }
  }
}

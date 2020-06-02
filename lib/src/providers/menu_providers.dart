import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _MenuProvider{
  List<dynamic> opciones=[];

  _MenuProvider(){
    cargarData();
  }
//asincronia para mostrar elementos desde json
   Future<List<dynamic>> cargarData() async{

   final resp= await rootBundle.loadString('dataJson/menu_opts.json');
    Map dataMap=json.decode(resp);
      print(dataMap['rutas']);
      opciones=dataMap['rutas'];

      return opciones;

  }
}

final menuProvider= new _MenuProvider();
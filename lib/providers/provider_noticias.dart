import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert' as convert;
import 'package:lecturajson/interfaces/noticias.dart';

class _ProviderNoticias {
  Future<List<Noticias>> cargarNoticias() async {
    List<Noticias> data = [];
    final _datosJson = await rootBundle.loadString('database/table.json');
    List<dynamic> datosList = convert.jsonDecode(_datosJson);
    data = datosList.map((e) => Noticias.fromJson(e)).toList();

    return data;
  }
}

final listNoticias = _ProviderNoticias();
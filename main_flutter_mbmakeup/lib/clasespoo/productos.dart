import 'package:flutter/cupertino.dart';

class Productos {
  ///Se inician las propiedades de los productos
  final String id;
  final String titulo;
  final String descripcion;
  final double precio;
  final String imagenURL;
  bool esfavorito;

  ///Se inicia constructor

  Productos({
    @required this.id,
    @required this.titulo,
    @required this.descripcion,
    @required this.precio,
    @required this.imagenURL,
    this.esfavorito = false,
  });
}

import 'package:flutter/cupertino.dart';

class Laptop {
  final int id;
  final String nombre;
  final String procesador;
  final String pantalla;
  final String tarjetagrafica;
  final String Descripcion;
  final String imagen;
  bool read;

  Laptop({
    required this.id,
    required this.nombre,
    required this.procesador,
    required this.pantalla,
    required this.tarjetagrafica,
    required this.Descripcion,
    required this.imagen,
    this.read = false,
  });
}

class Nombre {
  final String nombres;
  final String apelidos;
  final String curso;
  bool read;

  Nombre({
    required this.nombres,
    required this.apelidos,
    required this.curso,
    this.read = false,
  });
}

import 'dart:ui';

import 'laptop.models.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }
  Backend._internal();
  final _laptops = [
    Laptop(
        id: 1,
        nombre: 'Lenovo',
        procesador: 'i7',
        pantalla: '19 pulgadas',
        tarjetagrafica: 'geforce integrada',
        Descripcion:
            'Esta laptop esta formada por partes importantes que no se como se definan dentro de este ambito pero que si es potente para trabajar',
        imagen: 'assets/lenovo.jpg'),
    Laptop(
        id: 2,
        nombre: 'HP',
        procesador: 'i5',
        pantalla: '14 pulgadas',
        tarjetagrafica: 'geforce integrada',
        Descripcion:
            'Laptop HP son super buenas para estudiar en casa o en el colegio se recomienda mucho',
        imagen: 'assets/hp.jpg'),
    Laptop(
        id: 3,
        nombre: 'Acer',
        procesador: 'i3',
        pantalla: '17 pulgadas',
        tarjetagrafica: 'geforce integrada',
        Descripcion:
            'Cambiando las mejores de su clase para que ustedes como profesionales puedan adquirir antes de que acabe su promocion',
        imagen: 'assets/acer.jpg'),
    Laptop(
        id: 4,
        nombre: 'Asus',
        procesador: 'AMD Ryzen3',
        pantalla: '19 pulgadas',
        tarjetagrafica: 'geforce integrada AMD',
        Descripcion:
            'Potentes marcas y procesadores excelente para jugar, estudiar y muchas cosas interesantes',
        imagen: 'assets/asus.jpg'),
    Laptop(
        id: 4,
        nombre: 'Msi',
        procesador: 'AMD Ryzen5',
        pantalla: '19 pulgadas',
        tarjetagrafica: 'geforce integrada AMD',
        Descripcion:
            'Ejecutando buenas maquinas que funcionan par ajugar y estudiar con tu animos o hermano',
        imagen: 'assets/laptop.jpg'),
  ];

  List<Laptop> getLaptop() {
    return _laptops;
  }

  void markLaptopAsRead(int id) {
    final index = _laptops.indexWhere((laptop) => laptop.id == id);
    _laptops[index].read = true;
  }

  void deleteLaptop(int id) {
    _laptops.removeWhere((laptop) => laptop.id == id);
  }
}

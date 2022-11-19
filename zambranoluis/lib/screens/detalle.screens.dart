import 'package:flutter/material.dart';

import '../models/laptop.models.dart';

class DetalleScreen extends StatelessWidget {
  final Laptop laptop;
  TextStyle allsize = TextStyle(fontSize: 17);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2, color: Colors.pink),
    ),
  );

  DetalleScreen({Key? key, required this.laptop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(laptop.nombre),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(laptop.imagen))),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                laptop.procesador,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(laptop.nombre, style: allsize),
                  Text(
                    laptop.pantalla,
                    style: TextStyle(fontSize: 17, color: Colors.amber),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(laptop.Descripcion.toString(), style: allsize),
            Center(
                child: Container(
              child: ElevatedButton(
                child: Text(
                  'HECHO',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/laptop.models.dart';

class LaptopWidget extends StatelessWidget {
  final Laptop laptop;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle allsize = TextStyle(fontSize: 15);

  LaptopWidget({
    Key? key,
    required this.laptop,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () => longPress(laptop),
        onHorizontalDragEnd: (detalles) => swipe(laptop),
        onTap: () => ontap(
              laptop,
              context,
            ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.amber),
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Row(children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: laptop.read ? Colors.blueGrey : Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(laptop.procesador, style: allsize),
                  Text(laptop.nombre,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(laptop.pantalla, style: allsize),
                ],
              ),
            ),
          ]),
        ));
  }
}

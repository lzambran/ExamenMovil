import 'package:flutter/material.dart';
import '../models/bakend.dart';
import '../models/laptop.models.dart';
import 'detalle.screens.dart';
import '../widgets/laptop.widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void longPress(Laptop laptop) {
    setState(() {
      Backend().markLaptopAsRead(laptop.id);
    });
  }

  void swipe(Laptop laptop) {
    setState(() {
      Backend().deleteLaptop(laptop.id);
    });
  }

  void ontap(Laptop laptop, context) {
    setState(() {
      Backend().markLaptopAsRead(laptop.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetalleScreen(laptop: laptop)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getLaptop()
          .map((laptop) => LaptopWidget(
                laptop: laptop,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}

import 'package:progoogle/src/modulos/informacion.dart';
import 'package:progoogle/src/modulos/dyp.dart';
import 'package:progoogle/src/modulos/principal_p.dart';
import 'package:progoogle/widgets/icono.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget 
{
  const Home({super.key});
@override
Widget build(BuildContext context) 
{
  return DefaultTabController(
    length: 3,
    child: Scaffold
    (
      appBar: AppBar
      (
        centerTitle: false,
        title: RichText(
          text: const TextSpan
          (
            text: 'Cuenta de',
            style: TextStyle(color: Colors.black, fontSize: 20),
            children: [
              TextSpan(
                text: ' Google',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)
              )
            ]
          ),
        ),
        actions: [
          Row(
            children: [
              Iconos
              (
                icon: Icons.help_outline,
                onPressed: () {},
              ),
              Iconos(
                icon: Icons.search,
                onPressed: () {},
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/fdp.png', width: 50, height: 35),
              ),
            ],
          ),
        ],
        bottom: const TabBar
        (
          isScrollable: true,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              child: Text('Pagina Principal'),
            ),
            Tab(
              child: Text('Información Personal'),
            ),
            Tab(
              child: Text('Datos y Privacidad'),
            ),
          ],
        ),
      ),
      body: const TabBarView
      (
        children: 
        [
          Principalp(),
          Information(),
          Dyp(),
        ],
      ),
    ),
  );
}
}

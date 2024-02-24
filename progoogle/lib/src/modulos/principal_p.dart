import 'package:flutter/material.dart';

class Principalp extends StatelessWidget 
{
  const Principalp({super.key});
@override
  Widget build(BuildContext context) 
  {
    return  Scaffold
    (
      body: ListView.builder
      ( 
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) 
        {
          return const Column
          (
            children: 
            [
              Parte1(),
              Parte2(),
              Indica(),
              Parte3(),
            ],
          );
        },
      ),
    );
  }
}

class Parte1 extends StatelessWidget 
{
  const Parte1({super. key});
  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 0.5, color: Colors.black),
          Card(
            elevation: 0,
            margin: const EdgeInsets.only(),
            child: ListTile(
              title: const Text('Tu cuenta está protegida'),
              subtitle: Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('La verificación de seguridad revisó tus cuentas y no encontró acciones recomendadas.'),
                  RichText(
                    text: const TextSpan(
                      text: '\n Verificar la verificación de seguridad',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/rary.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class Parte2 extends StatelessWidget 
{
  const Parte2({super. key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 0.5, color: Colors.black),
          Card(
            elevation: 0,
            margin: EdgeInsets.only(),
            child: ListTile(
              title: const Text('Verificación de privacidad'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Elije la configuración indicada para ti con esta guía paso a paso.'),
                  RichText(
                    text: const TextSpan(
                      text: 'Realizar la verificación de seguridad',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/rary2.png'),
            ),
          ),
          const Divider(thickness: 0.5, color: Colors.black),
        ],
      ),
    );
  }
}

class Parte3 extends StatelessWidget 
{
  const Parte3({super. key});

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 0.5, color: Colors.black),
          Card(
            elevation: 0,
            margin: const EdgeInsets.only(),
            child: ListTile(
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y seguridad de tus datos.',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  Row(
                    children: [
                      Text(
                        'Más información',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                      Icon(
                        Icons.help,
                        color: Colors.blue,
                        size: 14,
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Image.asset('assets/images/rary2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class Indica extends StatelessWidget 
{
  const Indica({super. key});
  @override
  Widget build(BuildContext context) 
  {
    return const Column(
      children: [
        ListTile(title: Text('¿Buscas otra información?')),
        ListTile(
          leading: Icon(Icons.search_outlined),
          title: Text('Buscar en la cuenta de Google'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.help_outline),
          title: Text('Ver las opciones de ayuda'),
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.announcement_outlined),
          title: Text('Enviar comentarios'),
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
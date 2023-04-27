import 'package:flutter/material.dart';
import 'package:taller_investigacion/widgets/custom_column.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 255, 254, 254),
          Color.fromARGB(255, 202, 202, 202),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          title: const Text('Inicio'),
          bottomOpacity: 1,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: const Size(30, 10),
              child: Container(
                color: Colors.purple.shade300,
              )),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Image.asset(
                scale: 3,
                color: Colors.white.withOpacity(0.09),
                colorBlendMode: BlendMode.modulate,
                'assets/images/obstruido.png',
              ),
              Text(
                'Lo sentimos de momento no tienes ningun hijo registrado',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/NewChild');
                  },
                  child: Text(
                    '¿deseas agregar uno?',
                    style: TextStyle(color: Colors.purple.shade300),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

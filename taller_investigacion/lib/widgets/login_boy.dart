import 'package:flutter/material.dart';

import '../pages/create_user.dart';

class LoginBoy extends StatelessWidget {
  const LoginBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 237, 178, 245).withOpacity(0.5),
              const Color.fromARGB(255, 233, 60, 60).withOpacity(0.5),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.purple.shade300)),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Iniciar sesion como niño',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
              decorationThickness: 5,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
                decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white54,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              labelText: 'Correo',
            )),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Contraseña',
                )),
          ),
          FilledButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/create');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateUser()));
              },
              child: const Text('Iniciar Sesion')),
          const Padding(
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}

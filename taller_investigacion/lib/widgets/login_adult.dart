import 'package:flutter/material.dart';

class LoginAdult extends StatelessWidget {
  const LoginAdult({super.key});
  final bool enabled = true;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFFffdab9),
              Color(0xFFf8f9fa),
            ],
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 2, color: Colors.purple.shade300)),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Iniciar sesion como Adulto',
            style: TextStyle(
              fontSize: 30,
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
              onPressed: onPressed,
              child: const Text('Iniciar Sesion')),
          const Padding(
            padding: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}

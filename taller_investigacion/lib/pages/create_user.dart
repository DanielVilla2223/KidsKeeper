import 'package:flutter/material.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color.fromARGB(255, 105, 23, 160),
            Color.fromARGB(255, 226, 192, 190),
          ],
        )),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          margin: const EdgeInsets.fromLTRB(15, 50, 15, 50),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/logo_child.png',
                  height: 180,
                  width: 180,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Crear cuenta',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Nombre',
                    hintText: 'Nombre y Apellido',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Correo',
                    hintText: 'Correo electronico',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: const TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white38,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Contraseña',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Registro',
                    style: TextStyle(fontSize: 18),
                  )),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '¿Ya tienes una cuenta?',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text('Iniciar sesion'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

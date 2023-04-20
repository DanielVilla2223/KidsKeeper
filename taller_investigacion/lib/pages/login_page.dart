import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taller_investigacion/widgets/login_adult.dart';
import 'package:taller_investigacion/widgets/login_boy.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int currentLogin;
  @override
  void initState() {
    super.initState();
    currentLogin = 0;
  }

  final bool enabled = true;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 226, 192, 190),
          Color.fromARGB(255, 105, 23, 160),
        ],
      )),
      child: Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Inicio de sesion'),
          centerTitle: true,
          backgroundColor: Colors.pink.withOpacity(0.5),
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 2,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentLogin = 0;
                        });
                      },
                      child: Container(
                          constraints: const BoxConstraints(maxWidth: 600),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              color: Colors.blue[200]),
                          child: Image.asset(
                            'assets/images/adulto.png',
                            height: 150,
                            width: 150,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Adulto',
                      style: GoogleFonts.archivoNarrow(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentLogin = 1;
                        });
                      },
                      child: Container(
                          constraints: const BoxConstraints(maxWidth: 600),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              color: Colors.green[200]),
                          child: Image.asset(
                            'assets/images/nino.png',
                            height: 150,
                            width: 150,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Niño',
                      style: GoogleFonts.archivoNarrow(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            AnimatedSwitcher(
                duration: const Duration(milliseconds: 1000),
                child:
                    currentLogin == 0 ? const LoginAdult() : const LoginBoy()),
          ],
        ),
      ),
    );
  }
}

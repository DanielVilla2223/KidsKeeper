import 'package:flutter/material.dart';
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
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
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
          backgroundColor: Colors.purple.shade300,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 10,
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
                      const Text(
                        'Adulto',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
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
                      const Text(
                        'Niño',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1000),
                  child:
                      currentLogin == 0 ? const LoginAdult() : const LoginBoy()),
            ],
          ),
        ),
      ),
    );
  }
}

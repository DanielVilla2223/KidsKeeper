import 'package:flutter/material.dart';
import 'package:taller_investigacion/widgets/custom_column.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CustomColumn(),
              CustomColumn(),
              CustomColumn(),
              CustomColumn(),
            ],
          )),
    );
  }
}

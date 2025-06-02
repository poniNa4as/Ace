import 'package:ace/sections/dart_section/dart_add_widget.dart';
import 'package:ace/sections/flutter_section/flutter_add_widget.dart';
import 'package:ace/sections/oop_section/oop_add_widget.dart';
import 'package:ace/sections/solid_section/solid_add_widget.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Admin Console'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              FlutterAddWidget(),
              DartAddWidget(),
              SolidAddWidget(),
              OopAddWidget(),
            ],
          ),
      ),
    );
  }
}
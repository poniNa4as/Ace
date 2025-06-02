import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FrameworksPage extends StatelessWidget {
   FrameworksPage({super.key});

  final List<Frameworks> frameworks = [
  Frameworks(name: 'Flutter', iconPath: 'assets/icons/frameworks/flutter.png'),
  Frameworks(name: 'Angular', iconPath: 'assets/icons/frameworks/angular.png'),
  Frameworks(name: 'React', iconPath: 'assets/icons/frameworks/react.png'),
  Frameworks(name: 'Vue', iconPath: 'assets/icons/frameworks/vue.png'),
];


  @override
  Widget build(BuildContext context,) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Frameworks')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: frameworks.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final lang = frameworks[index];
            return GestureDetector(
              onTap: () {
                context.push('/questions/${lang.name}');
              },
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(lang.iconPath, height: 60),
                    const SizedBox(height: 10),
                    Text(
                      lang.name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


class Frameworks {
  final String name;
  final String iconPath; 
  const Frameworks({required this.name, required this.iconPath});
}
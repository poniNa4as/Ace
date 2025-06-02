import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BasicPage extends StatelessWidget {
   BasicPage({super.key});

  final List<Language> languages = [
  Language(name: 'OOP', iconPath: 'assets/icons/basic/oop.png'),
  Language(name: 'SOLID', iconPath: 'assets/icons/basic/solid4.png'),
  Language(name: 'DRY', iconPath: 'assets/icons/basic/dry.png'),
  Language(name: 'Design Patterns', iconPath: 'assets/icons/basic/design.png'),
];


  @override
  Widget build(BuildContext context,) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Basic')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: languages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final lang = languages[index];
            return GestureDetector(
              onTap: () {
                context.push('/fundamentals/${lang.name}');
              },
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(lang.iconPath, height: 100),
                    const SizedBox(height: 10),
                    Text(
                      lang.name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
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


class Language {
  final String name;
  final String iconPath; 
  const Language({required this.name, required this.iconPath});
}
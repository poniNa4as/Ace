import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LanguagesPage extends StatelessWidget {
   LanguagesPage({super.key});

  final List<Language> languages = [
  Language(name: 'JavaScript', iconPath: 'assets/icons/languages/js.png'),
  Language(name: 'Python', iconPath: 'assets/icons/languages/python.png'),
  Language(name: 'Java', iconPath: 'assets/icons/languages/java.png'),
  Language(name: 'Dart', iconPath: 'assets/icons/languages/dart.png'),
];


  @override
  Widget build(BuildContext context,) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Languages')),
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


class Language {
  final String name;
  final String iconPath; 
  const Language({required this.name, required this.iconPath});
}
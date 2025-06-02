import 'package:ace/consts/categories.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategorySwiper extends StatelessWidget {
 const CategorySwiper({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        itemCount: mainCategories.length,
        controller: PageController(viewportFraction: 0.85),
        itemBuilder: (context, index) {
          final category = mainCategories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: const Color(0xFF1A1A1A),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  context.push(category.route);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(category.icon, size: 60, color: Theme.of(context).primaryColor),
                    const SizedBox(height: 10),
                    Text(
                      category.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      category.subtitle,
                      style: const TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}


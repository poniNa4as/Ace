import 'package:ace/pages/home/widgets/carousel_widget.dart';
import 'package:ace/pages/home/widgets/category_swiper.dart';
import 'package:ace/pages/home/widgets/sidebar.dart';
import 'package:ace/pages/home/widgets/slogan.dart';
import 'package:ace/pages/home/widgets/subscription_home.dart';
import 'package:ace/pages/home/widgets/suggest_question_card.dart';
import 'package:ace/providers/sidebar_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(sidebarControllerProvider);
    return Scaffold(
      drawer: Sidebar(controller: controller),
      appBar: AppBar(
        backgroundColor: Color(0xFFF57C00),
        title: Center(
          child: Text(
            'Ace',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
        actions: [
          Image.asset(
            'assets/icons/question.png',
            width: 40,
            fit: BoxFit.contain,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Slogan(),
              SizedBox(height: 10),
              Carousel(),
              SizedBox(height: 20),
              SubscriptionHome(),
              SizedBox(height: 20),
              CategorySwiper(),
              SizedBox(height: 20),
              SuggestQuestionCard(),
            ],
          ),
        ),
      ),
    );
  }
}

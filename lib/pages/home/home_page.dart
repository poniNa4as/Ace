import 'package:ace/pages/home/widgets/carousel_widget.dart';
import 'package:ace/pages/home/widgets/category_swiper.dart';
import 'package:ace/pages/home/widgets/slogan.dart';
import 'package:ace/pages/home/widgets/subscription_home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF57C00),
        title: Center(child: Text('Ace')),
        leading: Image.asset(
          'assets/icons/question.png',
          width: 15,
          fit: BoxFit.contain,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.push('/admin');
            },
            icon: Icon(Icons.add),
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
            ],
          ),
        ),
      ),
    );
  }
}

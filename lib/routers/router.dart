import 'package:ace/models/question_model.dart';
import 'package:ace/pages/add_question/add_question_page.dart';
import 'package:ace/pages/admin_page.dart';
import 'package:ace/pages/basic/basic_page.dart';
import 'package:ace/pages/chat/chat_page.dart';
import 'package:ace/pages/favorite/favorite_page.dart';
import 'package:ace/pages/frameworks/frameworks_page.dart';
import 'package:ace/pages/fundamentals/fundamentals_page.dart';
import 'package:ace/pages/home/home_page.dart';
import 'package:ace/pages/languages/languages_page.dart';
import 'package:ace/pages/questions/question_page.dart';
import 'package:ace/pages/questions/single_question/question_details_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomePage()),
    GoRoute(path: '/admin', builder: (context, state) => AdminPage()),
    GoRoute(path: '/frameworks', builder: (context, state) => FrameworksPage()),
    GoRoute(path: '/basic', builder: (context, state) => BasicPage()),
    GoRoute(path: '/languages', builder: (context, state) => LanguagesPage()),
    GoRoute(path: '/favorite', builder: (context, state) => FavoritePage()),
    GoRoute(path: '/add', builder: (context, state) => AddQuestionPage()),
    GoRoute(path: '/chat', builder: (context, state) => ChatPage()),
    GoRoute(
      path: '/question_details',
      builder: (context, state) {
        final extra = state.extra;
        if (extra is Map<String, dynamic>) {
          final q = extra['question'] as QuestionModel?;
          final flag = extra['flag'] as bool? ?? true;

          if (q != null) {
            return QuestionDetailPage(question: q, flag: flag);
          }
        }
        return Scaffold(
          body: Center(child: Text('Invalid or missing arguments')),
        );
      },
    ),
    GoRoute(
      path: '/fundamentals/:title',
      builder: (context, state) {
        final title = state.pathParameters['title'];
        return FundamentalsPage(title: title.toString());
      },
    ),
    GoRoute(
      path: '/questions/:title',
      builder: (context, state) {
        final title = state.pathParameters['title'];
        return QuestionPage(title: title.toString());
      },
    ),
  ],
);

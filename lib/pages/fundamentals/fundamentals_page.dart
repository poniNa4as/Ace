import 'package:ace/api/api_service.dart';
import 'package:ace/models/question_model.dart';
import 'package:ace/pages/questions/widgets/question_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FundamentalsPage extends ConsumerStatefulWidget {
  final String title;
  const FundamentalsPage({super.key, required this.title});

  @override
  ConsumerState<FundamentalsPage> createState() => _FundamentalsPageState();
}

class _FundamentalsPageState extends ConsumerState<FundamentalsPage> {
  List<QuestionModel> questions = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      final data = await ref.read(questionProvider(widget.title).future);
      setState(() {
        questions = data;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child:
                isLoading
                    ? const Center(child: CircularProgressIndicator.adaptive())
                    : questions.isEmpty
                    ? const Center(child: Text('No Data'))
                    : ListView.builder(
                      itemCount: questions.length,
                      itemBuilder: (context, i) {
                        final q = questions[i];
                        return QuestionCart(question: q);
                      },
                    ),
          ),
        ],
      ),
    );
  }
}

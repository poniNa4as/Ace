import 'package:ace/api/api_service.dart';
import 'package:ace/models/question_model.dart';
import 'package:ace/pages/questions/widgets/customTextField.dart';
import 'package:ace/pages/questions/widgets/custom_button.dart';
import 'package:ace/pages/questions/widgets/question_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionPage extends ConsumerStatefulWidget {
  final String title;
  const QuestionPage({super.key, required this.title});

  @override
  ConsumerState<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends ConsumerState<QuestionPage> {
  List<QuestionModel> questions = [];
  List<QuestionModel> filteredQuestion = [];
  bool isLoading = true;
  bool isToggled = true;
  final TextEditingController controller = TextEditingController();

  void handleInput(String query) {
    final search = query.toLowerCase();
    final result =
        questions.where((q) {
          return q.tags.any((tag) => tag.toLowerCase().contains(search));
        }).toList();
    setState(() {
      filteredQuestion = result;
    });
  }

  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      final data = await ref.read(questionProvider(widget.title).future);
      setState(() {
        questions = data;
        filteredQuestion = data;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Icon(Icons.star, size: 30, color: Theme.of(context).primaryColor),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              controller: controller,
              handleInput: handleInput,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(title: 'Junior', initialIsToggled: isToggled,),
                CustomButton(title: 'Middle', initialIsToggled: isToggled,),
                CustomButton(title: 'Senior', initialIsToggled: isToggled,),
              ],
            ),
          ),
          Expanded(
            child:
                isLoading
                    ? const Center(child: CircularProgressIndicator.adaptive())
                    : questions.isEmpty
                    ? const Center(child: Text('No Data'))
                    : ListView.builder(
                      itemCount: filteredQuestion.length,
                      itemBuilder: (context, i) {
                        final q = filteredQuestion[i];
                        return QuestionCart(question: q);
                      },
                    ),
          ),
        ],
      ),
    );
  }
}

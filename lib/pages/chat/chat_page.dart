import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late final WebSocketChannel _channel;
  final List<_ChatMessage> messages = [];
  final TextEditingController controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _hasText = false;

  String? username;

  @override
  void initState() {
    super.initState();
    _askUsername();

    controller.addListener(() {
      final hasText = controller.text.isNotEmpty;
      if (hasText != _hasText) {
        setState(() {
          _hasText = hasText;
        });
      }
    });

    _channel = WebSocketChannel.connect(Uri.parse('wss://ws.ifelse.io'));

    _channel.stream.listen((message) {
      final parts = message.split('::');
      final sender = parts.length > 1 ? parts[0] : 'unknown';
      final text = parts.length > 1 ? parts[1] : message;

      setState(() {
        messages.add(_ChatMessage(sender: sender, text: text));
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    });
  }

  void _askUsername() async {
    await Future.delayed(Duration.zero);

    final nameController = TextEditingController();
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (_) => AlertDialog(
            title: Text('Name'),
            content: TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Your Name'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  final name = nameController.text.trim();
                  if (name.isNotEmpty) {
                    Navigator.of(context).pop();
                    setState(() {
                      username = name;
                    });
                  }
                },
                child: Text('OK'),
              ),
            ],
          ),
    );
  }

  void _addMessage() {
    if (controller.text.isNotEmpty && username != null) {
      final fullMessage = '$username::${controller.text}';
      _channel.sink.add(fullMessage);
      controller.clear();
    }
  }

  @override
  void dispose() {
    _channel.sink.close();
    controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://uprostim.com/wp-content/uploads/2021/01/image098-27-925x720.jpg')
          ),
        ),
        title: Text('Chat'),
        actions: [
          IconButton(onPressed: (){
            context.pop();
          }, icon: Icon(Icons.arrow_back)),
           SizedBox(width: 15,),
          Icon(Icons.menu),
          SizedBox(width: 15,)
        ],
        ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: messages.length,
              itemBuilder: (context, i) {
                final msg = messages[i];
                final isMe = msg.sender == username;

                return Align(
                  alignment:
                      isMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                    decoration: BoxDecoration(
                      color: isMe ? Colors.blueAccent : Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(isMe ? 12 : 0),
                        bottomRight: Radius.circular(isMe ? 0 : 12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment:
                          isMe
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                      children: [
                        if (!isMe)
                          Text(
                            msg.sender,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        Text(
                          msg.text,
                          style: TextStyle(
                            color: isMe ? Colors.white : Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions,
                  color: const Color.fromARGB(255, 187, 198, 215),
                ),
                SizedBox(width: 8),

                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Message...',
                      hintStyle: TextStyle(color: Colors.blueGrey),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _addMessage(),
                  ),
                ),
                SizedBox(width: 8),
                _hasText
                    ? IconButton(onPressed: _addMessage, icon: Icon(Icons.send))
                    : Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(Icons.attach_file),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          onPressed: () {},
                          icon: Icon(Icons.photo_camera_outlined),
                        ),
                      ],
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ChatMessage {
  final String sender;
  final String text;

  _ChatMessage({required this.sender, required this.text});
}

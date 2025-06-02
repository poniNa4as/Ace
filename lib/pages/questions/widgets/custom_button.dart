import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final bool initialIsToggled;
  const CustomButton({
    super.key,
    required this.title,
    this.initialIsToggled = true,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late bool isToggled;
  @override
  void initState() {
    isToggled = widget.initialIsToggled;
    super.initState();
  }

  void _toggle() {
    setState(() {
      isToggled = !isToggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggle,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        backgroundColor:
            isToggled
                ? Theme.of(context).primaryColor
                : const Color.fromARGB(255, 43, 56, 62),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      ),
      child: Text(widget.title, style: TextStyle(fontSize: 15)),
    );
  }
}

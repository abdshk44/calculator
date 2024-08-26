import 'package:calculator/home_screem.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;

  MyButton({super.key, required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onpress

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 45,
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}


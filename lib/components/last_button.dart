import 'package:flutter/material.dart';
import 'package:calculator/home_screem.dart';
class lastbtn extends StatelessWidget {
  final String titile;
  final VoidCallback onpress;
  lastbtn({super.key,required this.titile, required this.onpress});

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 22 ,horizontal: 26),
      child: InkWell(
        onTap: onpress,
        child: Container(
          width: 140,
          decoration: BoxDecoration(color: Color(0xffa5a5a5), borderRadius: BorderRadius.circular(20) ),
          child:
          Center(child: Text(titile,style: TextStyle(fontSize: 30,color: Colors.white),)),
        ),
      ),
    );
  }
}

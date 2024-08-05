import 'package:flutter/material.dart';

class Options extends StatelessWidget {
 final String text;
  final Color color;
  final Color textColor;
  const Options({required this.text,required this.color,required this.textColor,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width:87 ,
      height: 29,
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(6)
      ),
      child:
      Center(child: Text(text,style: TextStyle(color: textColor,fontWeight: FontWeight.w500),)),
    );

  }
}

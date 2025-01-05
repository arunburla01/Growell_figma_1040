import 'package:flutter/material.dart';

class Textwidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
const Textwidget({ super.key,required this.text, this.color ,this.fontSize,this.fontWeight,this.fontFamily});

  @override
  Widget build(BuildContext context){
    return Text(text,style: TextStyle(color: color,fontSize:fontSize,fontWeight: fontWeight,fontFamily:fontFamily  ),);
  }
}
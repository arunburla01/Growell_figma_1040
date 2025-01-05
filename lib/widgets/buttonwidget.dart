import 'package:flutter/material.dart';
import 'package:growell_project/utils/color_constants.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? buttonColor;
  final double? borderRadius;
  final double? elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;

  const ButtonWidget({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.textColor = ColorsConstants.black,
    this.buttonColor = Colors.white,
    this.borderRadius = 14,
    this.elevation = 5,
    this.fontSize = 16,
    this.fontWeight,
    this.width = double.infinity,
    this.height = 65,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor, // Set background color of the container to white
          borderRadius: BorderRadius.circular(borderRadius!), // Set border radius
          boxShadow: [
            BoxShadow(
              color: Colors.black26, // Elevation shadow color
              blurRadius: elevation!, // Add elevation for pressed effect
              spreadRadius: 1, // Controls the shadow spread
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent, // Transparent to avoid button background issues
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!), // Rounded corners
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                buttonText,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: textColor,
                ),
              ),
               Icon(Icons.arrow_forward,color: textColor,)
              
            ],
          ),
        ),
      ),
    );
  }
}

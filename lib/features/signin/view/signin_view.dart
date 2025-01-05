import 'package:flutter/material.dart';
import 'package:growell_project/utils/color_constants.dart';
import 'package:growell_project/utils/image_constants.dart';
import 'package:growell_project/widgets/buttonwidget.dart';
import 'package:growell_project/widgets/textwidget.dart';

class SigninView extends StatefulWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  _SigninViewState createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConstants.blue, // Set background color to blue
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                ImageConstants.background, // Background image
                height: 330,
                width: double.infinity, // Use double.infinity for full width
                fit: BoxFit.fill,
              ),
              // Foreground Image (Logo)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageConstants.logo,
                    width: 249,
                    height: 46,
                  ),SizedBox(height: 5,),
                  Row(
                       spacing:18,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageConstants.work),        // Add Image assets
                          Image.asset(ImageConstants.stylus),
                          Image.asset(ImageConstants.sceince),
                          Image.asset(ImageConstants.book),
                          Image.asset(ImageConstants.person_celebrate),
                         ],
                       ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children:[Align(
                alignment: Alignment.centerLeft,
                child: Textwidget(text: "welcome",fontSize:48,
                color:ColorsConstants.white,fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,),
              ),
            const SizedBox(height: 100,),
             // Add some spacing between the images
            ButtonWidget(buttonText: "signin",
            fontSize: 20,
            fontWeight: FontWeight.w500,),
            SizedBox(height: 30,),
            ButtonWidget(buttonText: "signup",fontWeight: FontWeight.w500,)
            ]
            ),
          )
          
        ],
      ),
    );
  }
}

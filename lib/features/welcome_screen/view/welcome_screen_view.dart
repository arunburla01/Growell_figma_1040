import 'package:flutter/material.dart';
import 'package:growell_project/router/routes_constants.dart';
import 'package:growell_project/services/navigation_services.dart';
import 'package:growell_project/utils/color_constants.dart';
import 'package:growell_project/utils/image_constants.dart';
import 'package:growell_project/widgets/buttonwidget.dart';
import 'package:growell_project/widgets/textwidget.dart';

class WelcomeScreenView extends StatefulWidget {
  const WelcomeScreenView({Key? key}) : super(key: key);

  @override
  _WelcomeScreenViewState createState() => _WelcomeScreenViewState();
}

class _WelcomeScreenViewState extends State<WelcomeScreenView> {
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
                height: 400,
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
            padding: EdgeInsets.all(25),
            child: Column(
              children:[ Align(
                alignment: Alignment.centerLeft,
                child: Textwidget(text: "welcome",fontSize:48,
                color:ColorsConstants.white,fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,),
              ),
             const SizedBox(height:90 ,),
            
             // Add some spacing between the images
            ButtonWidget(onPressed: () {
              NavigationService().navigateTo(RoutesConstants.signinscreen);
            },
              buttonText: "signin",
            fontSize: 20,
            fontWeight: FontWeight.w500,),
            SizedBox(height: 24,),
            ButtonWidget(buttonText: "signup",fontSize: 20,fontWeight: FontWeight.w500,)]),
          )
          
        ],
      ),
    );
  }
}

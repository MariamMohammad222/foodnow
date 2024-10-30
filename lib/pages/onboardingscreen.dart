
import 'package:flutter/material.dart';
import 'package:foodnow/models/model1.dart';
import 'package:foodnow/pages/home_page_mohamed.dart';
import 'package:foodnow/pages/homepage.dart';
import 'package:foodnow/widgets/widget1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingscreen extends StatefulWidget {
  const onboardingscreen({super.key});

  @override
  State<onboardingscreen> createState() => _onboardingscreenState();
}
bool islast = false;
var controlle = PageController();

List<onboardingg>onn=[
  onboardingg(image: 'assets/images/onboarding2 (2).PNG', text: 'Good food at a \n   cheap price', text2: 'You can eat at expensive \n        restarants with \n       affordable price'),
  onboardingg(
    image: 'assets/images/onboarding2.PNG', 
    text: '      Select the \n Favorities Menu', text2:
     'Now eat well,dont leave the house,you can \n choose your favourite food only with \n \t \t  \t \t \t \t \t\t\t\t\t\t\t     one click')
];

class _onboardingscreenState extends State<onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [Text('')],
        ),
        body: PageView.builder(
          controller: controlle,
          itemCount: onn.length,
          onPageChanged: (index) {
            if (index == onn.length - 1) {
              islast = true;
              setState(() {});
            } else {
              islast = false;
              setState(() {});
            }
          },
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                onboarding(onb: onn[index],),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      islast=false;
                     
                    },
                    child: Center(
                      child: Visibility(
                        visible: islast,
                        child: TextButton(onPressed: 
                           () {
                            Navigator.push(context,MaterialPageRoute(builder:(context) => homepage(),));
                          },
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Color.fromARGB(255,214, 19, 85),),
                            height: 55,
                            width: 200,
                            
                            child: Center(
                              child: Text(
                                'Next',
                                style: TextStyle(fontSize: 30,color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ), 
                SizedBox(height: 10,),

                Padding(
                  padding:EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text( 'skip',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                      Spacer(),
                      SmoothPageIndicator(    
                       controller: controlle,  // PageController    
                        count:  2,    
                      effect:  WormEffect(
                        activeDotColor: Colors.pink
                      ),  // your preferred effect    
                       onDotClicked: (index){    
                       }
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward,color: Colors.grey,),
                    ],
                  ),
                ), 
                
                SizedBox(height: 10,),  
                
              ],
            );
          },
        ));
  }
}

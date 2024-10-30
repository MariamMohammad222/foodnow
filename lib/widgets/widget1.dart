
import 'package:flutter/material.dart';
import 'package:foodnow/models/model1.dart';

class onboarding extends StatelessWidget {
   onboarding({super.key,required this.onb});
 onboardingg onb;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(  
        children: [ 
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container( 
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage(onb.image),fit: BoxFit.fill),),
            
            ),
            
      
          ),
          SizedBox(height: 22,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Text(onb.text,style:TextStyle(fontWeight: FontWeight.w800,fontSize: 26,color: Color.fromARGB(255, 0, 0, 0)),),
                SizedBox(height: 7,),
                Text(onb.text2,style:TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color.fromARGB(255, 95, 95, 95))),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
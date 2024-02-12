import 'package:flutter/material.dart';
import 'package:procastinot/components/introbutton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height:25),             


      //heading 
          Text(
            "     QUOTE OF THE DAY",
            style: TextStyle(
             color:Colors.black,
              fontSize: 30, 
               
            ),
            ),

            const SizedBox(height:25),

      //image
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('lib/images/intro.png'),
            ),

            const SizedBox(height:20),

      //quote
            Text(
           "Discipline is explaining to your brain that you need to sacrifice immediate pleasures for greater rewards in the future.",
           style:TextStyle(
          color: Colors.black,
          fontSize: 20,
        )
        ),

      const SizedBox(height:20), 

      //button
       IntroButton(
        text: "Get Started  ",
        onTap: (){

       //go to home page
          Navigator.pushNamed(context,'/homepage');
       
       },
       )


           ]
       ,)
      )
    );
  }
}
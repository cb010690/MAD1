import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  
  const IntroButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:BoxDecoration(color: Color.fromARGB(255, 47, 48, 53), 
        borderRadius: BorderRadius.circular(40) ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //button text
            Text(
              text,
              style:TextStyle(
                color: Colors.white
                ),
            ),
      
          //icon
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
      
      
      
      
          ]
        ),
      ),
    );
  }
}
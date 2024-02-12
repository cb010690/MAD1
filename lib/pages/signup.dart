import 'package:flutter/material.dart';
import 'package:procastinot/components/mytextfield.dart'; 
import 'package:procastinot/components/mybutton.dart';
import 'package:procastinot/components/squaretitle.dart';

class SignUp extends StatelessWidget{
    SignUp ({super.key}); 

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

void signUserIn(){

}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height:50),
            
                  //logo
                  Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/logo.png'),
              ),

            const SizedBox(height:25),
             
            
                  //Heading
              Text('Welcome Back to ProcastiNot',
              style: TextStyle(
                color:Colors.black,
              fontSize: 16, 
            
              ),
              ),
            
            
              const SizedBox(height: 25),
            
                  //username 
                     MyTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
                     ),
            
             const SizedBox(height: 10),

             //email
                     MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
                     ),
            
             const SizedBox(height: 10),
            
                  //password
                     MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
                     ),
            
             const SizedBox(height: 10),
            
                  //forgot password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Forgot password?',
                style: TextStyle(color:Colors.grey[600]), 
              ),
            ],
                     ),
                   ),
            
            const SizedBox(height: 25),
            
                  //sign in 
                  MyButton(
                    onTap: signUserIn,
                  ),
                  
            
                  const SizedBox(height: 50),
            
                  // or continue with 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                    children: [
            Expanded(
              child: Divider(
               thickness: 0.5,
               color:Colors.grey[400],
                  ),
            ),
                  Padding(
                     padding:const EdgeInsets.symmetric(horizontal:25.0),
                     child: Text(
              'Or continue with',
              style: TextStyle(color: Colors.grey[700]),
              ),
                  ),
                  Expanded(
                    child:Divider(
            thickness:0.5,
            color: Colors.grey[400],
             ),
            ),
                    ],
                  ),
                ),
            
                 const SizedBox(width:10),
            
                  //google sign in 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     SquareTitle(imagePath:  'lib/images/google.png' ),
            
                   const SizedBox(height: 120),
                     
                  ],
                    ),
            
                  const SizedBox(height: 10),
                 
                   //new member registation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
            Text('Not a member yet?',
            style: TextStyle(color:Colors.grey)
            ),
            const SizedBox(width:4),
            GestureDetector(
              child: Text(
                'Register Now!',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
                ),
            ),
                    ],
                  )
            
            
            ],
           ),
          ),   
        ),
      ),
     );
  }
}
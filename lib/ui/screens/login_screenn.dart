import 'package:flutter/material.dart';
import 'package:meal_app/ui/screens/reset_password.dart';
import 'package:meal_app/ui/widget/button_with_icon.dart';
import 'package:meal_app/ui/widget/custom_text_field.dart';
import 'package:meal_app/ui/widget/custome_button.dart';

import 'signup_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Login',style: TextStyle(color: Color(0xFF4A4B4D),fontSize: 28),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Add your details to login',style: TextStyle(color: Colors.grey),),
            CustomeTextfield(text: 'Your Email',),
            CustomeTextfield(text: 'Password',),
            CustomButton(text: 'Login',color: Color(0xFFFC6011),onpressed: (){}),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword()));
                },
                child: Text('Forgot your password?',style: TextStyle(color: Colors.grey),)),
            Text('or Login With',style: TextStyle(color: Colors.grey),),
            CustomButtonIcon(icon: (Icons.facebook),text: 'login with Facebook',color: Colors.blue.shade800,onpressed: (){},),
            CustomButtonIcon(icon: (Icons.facebook),text: ' login with Google',color: Colors.red,onpressed: (){},),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an Account?',style: TextStyle(color: Colors.grey),),
                SizedBox(width: 6,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>SignUpScreen()));
                    },
                    child: Text('Sign Up',style: TextStyle(color: Color(0xFFFC6011)),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

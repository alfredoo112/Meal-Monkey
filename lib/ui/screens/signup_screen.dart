import 'package:flutter/material.dart';
import 'package:meal_app/ui/widget/custom_text_field.dart';
import 'package:meal_app/ui/widget/custome_button.dart';

import 'login_screenn.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Sign Up',style: TextStyle(color: Color(0xFF696A6B),fontSize: 30),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Add your details to sign up',style: TextStyle(color: Colors.grey),),
            CustomeTextfield(text: 'Name',),
            CustomeTextfield(text: 'Email',),
            CustomeTextfield(text: 'Mobile No',),
            CustomeTextfield(text: 'Address',),
            CustomeTextfield(text: 'Password',),
            CustomeTextfield(text: 'Confirm Password',),
            CustomButton(text: 'Sign Up',color: Color(0xFFFC6011),onpressed: (){},),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account?',style: TextStyle(color: Colors.grey),),
                SizedBox(width: 6,),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>LogInScreen()));
                    },
                    child: Text('Login',style: TextStyle(color: Color(0xFFFC6011)),))
              ],
            )
          ],
        ),
      ),
    );
  }
}

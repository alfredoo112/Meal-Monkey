import 'package:flutter/material.dart';
import 'package:meal_app/ui/widget/custom_text_field.dart';
import 'package:meal_app/ui/widget/custome_button.dart';

import 'sent_active_code.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Reset Password',style: TextStyle(color: Color(0xFF696A6B),fontSize: 30),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Please enter your email to receive a\n link to  create a new password via email',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
            CustomeTextfield(text: 'Email'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
            CustomButton(
              color: Color(0xFFFC6011),
              text: 'Send',onpressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivePassword()));
            },),
          ],
        ),
      ),
    );
  }
}

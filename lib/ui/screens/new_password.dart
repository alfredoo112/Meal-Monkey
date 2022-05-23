import 'package:flutter/material.dart';
import 'package:meal_app/ui/widget/custom_text_field.dart';
import 'package:meal_app/ui/widget/custome_button.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('New Password',style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: 30),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Please enter your email to receive a\nlink to  create a new password via email',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
            CustomeTextfield(text: 'New Password'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
            CustomeTextfield(text: 'Confirm Password'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
            CustomButton(text: 'Next', color: Color(0xFFFC6011),onpressed: (){},)
          ],
        ),
      ),
    );
  }
}

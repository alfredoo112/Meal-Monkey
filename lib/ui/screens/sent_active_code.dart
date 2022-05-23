import 'package:flutter/material.dart';
import 'package:meal_app/ui/widget/custome_button.dart';

import 'login_screenn.dart';
import 'new_password.dart';

class ActivePassword extends StatelessWidget {
  const ActivePassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24,vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'We have sent an OTP to\nyour Mobile',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Text('Please check your mobile number 071*****12 \n continue to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  activeSquare(),
                  activeSquare(),
                  activeSquare(),
                  activeSquare(),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              CustomButton(text: 'Next', color: Color(0xFFFC6011),onpressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPassword()));
              },),
              SizedBox(height: MediaQuery.of(context).size.height * 0.046,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn\'t Receive?',style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 6,),
                  InkWell(
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>LogInScreen()));
                      },
                      child: Text('Click Here',style: TextStyle(color: Color(0xFFFC6011),fontWeight: FontWeight.bold),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget activeSquare(){
    return Container(
      height: 68,
      width: 68,
      child: Icon(Icons.ac_unit_rounded,color: Colors.grey,),
      decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}

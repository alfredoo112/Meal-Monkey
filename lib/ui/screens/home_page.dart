import 'package:flutter/material.dart';
import 'package:meal_app/ui/widget/custome_button.dart';

import 'login_screenn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      'images/Organe_top_1.png',width: double.infinity,),
                  ),),
                Expanded(
                  flex: 5,
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 12.0,),
                      Text('Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                      textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 60.0,),
                      CustomButton(text: 'Login',color: Color(0xFFFC6011),onpressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                      },),
                      SizedBox(height: 18.0,),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Color(0xFFFC6011)),
                              primary: Colors.white, //background color of button
                              elevation: 3, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)
                              ),),
                            onPressed: (){},
                            child: Text('Create an Account',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Color(0xFFFC6011)),)),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0,50),

              child: Center(child: Image.asset('images/Logo.png'))),
        ],
      ),
    );
  }
}


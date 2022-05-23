import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
 final String text;
 final Color color;
 Function onpressed;
   CustomButton({
    @required this.text,
    @required this.color,
     this.onpressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.065,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary:  color, //background color of button
            elevation: 3, //elevation of button
            shape: RoundedRectangleBorder( //to set border radius to button
                borderRadius: BorderRadius.circular(30)
            ),),
          onPressed: onpressed,
          child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),)),
    );
  }
}
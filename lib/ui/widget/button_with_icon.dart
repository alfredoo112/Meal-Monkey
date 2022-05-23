import 'package:flutter/material.dart';


class CustomButtonIcon extends StatelessWidget {
  final String text;
  final Color color;
  Function onpressed;
  IconData icon;
  CustomButtonIcon({
    @required this.text,
    @required this.color,
    this.onpressed,
    this.icon
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,),
              SizedBox(width: 14,),
              Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),),
            ],
          )),
    );
  }
}
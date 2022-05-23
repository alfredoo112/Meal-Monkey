import 'package:flutter/material.dart';
import 'package:meal_app/ui/widget/custome_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';


class OnBoardingScreen extends StatefulWidget {
   OnBoardingScreen({Key key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingModel> _pagesList = [
    OnBoardingModel(image: 'images/Find food you love vector.png',
        mainText: 'Find Food You Love',
        subText: 'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep'),
    OnBoardingModel(image: 'images/Delivery vector.png',mainText: 'Fast Delivery',
    subText: 'Fast food delivery to your home, office\n wherever you are'
    ),
    OnBoardingModel(
      image: 'images/Live tracking vector.png',
      mainText: 'Live Tracking',
      subText: 'Real time tracking of your food on the app \n once you placed the order'
    ),
  ];
  PageController _controller = PageController();
  bool isLast= false;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: _pagesList.length,
      controller: _controller,
        onPageChanged: (int i){
          if(i == _pagesList.length-1 ){
            setState(() {
              isLast = true;
              // sd
            });
          }
          else{
            setState(() {
              isLast = false;
            });
          }
        },
        itemBuilder: (context,i){
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(_pagesList[i].image),
              SmoothPageIndicator(
                controller: _controller,
                count: _pagesList.length,
                effect: const ScrollingDotsEffect(
                    dotColor: Colors.grey,
                    dotWidth: 10,
                    dotHeight: 10,
                    spacing: 12.0,
                    activeDotColor: Color(0xFFFC6011)),
              ),
              Text(_pagesList[i].mainText,textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.052,
                      color:Colors.black.withOpacity(0.7))),
              Text(_pagesList[i].subText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),),
              Padding(
                padding: const EdgeInsets.only(top:20,bottom: 40),
                child: CustomButton(text: 'Next', color: Color(0xFFFC6011),onpressed: (){
                  if(isLast){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  }else{
                    _controller.nextPage(
                        duration: Duration(milliseconds: 600),
                        curve: Curves.ease);
                  }
                },),
              ),

            ],
          ),
        ),
      );
    });
  }
}
class OnBoardingModel{
  final String image;
  final String mainText;
  final String subText;
OnBoardingModel({this.image,this.mainText,this.subText});
}

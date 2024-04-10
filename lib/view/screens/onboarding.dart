// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agri/controller/cont/onboardingCont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  final obcontroller = Get.put(OnBoardingCont());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
        
          
              Container(

                child: LiquidSwipe(
                  enableLoop: true,
                  pages: obcontroller.pages,
                  liquidController: obcontroller.controller,
                  onPageChangeCallback: obcontroller.onPageChangeCallback,
                ),
              ),
           
            
          Center(
            child: GetBuilder(
              init:OnBoardingCont(),
              builder: (_) {
            return  AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage,
                count: 3,
                effect: SlideEffect(
                    radius: 50,
                    dotWidth: 10,
                    dotHeight: 10,
                    activeDotColor: Colors.green));}),
          ),
            
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 90),
              // width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () => obcontroller.skip(),
                          child: const Text("skip ",
                              style: TextStyle(color: Colors.green)),
                        ),
                      ),
                    ),
                    // Spacer(flex: 1),
                    Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => obcontroller.next(),
                              child: const Text("Next ",
                                  style: TextStyle(color: Colors.green)),
                            ))),
                  ]),
            
          ),
        ],
      ),
    );
  }
}

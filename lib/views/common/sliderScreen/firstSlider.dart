import 'package:caretaker/controllers/slider_page_controller.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class FirstSlider extends StatefulWidget {
  const FirstSlider({super.key});

  @override
  State<FirstSlider> createState() => _FirstSliderState();
}

class _FirstSliderState extends State<FirstSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(
        //  itemCount: 1,
        itemBuilder: (context, index) {
          return Consumer<SliderPageController>(
              builder: (context, controller, x) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                    'assets/animation/${controller.title[controller.index]}.json',
                    height: 300,
                    reverse: true,
                    repeat: true,
                    fit: BoxFit.cover),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    10.heightBox,
                    Row(
                      //slider container in small start
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.title.length,
                        (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            height: 10,
                            width: 15,
                            decoration: BoxDecoration(
                                color: controller.index == index
                                    ? Colors.black
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(100)),
                          );
                        },
                      ),
                    ),
                    //slider container  end
                    20.heightBox,
                    Text(
                      "${controller.headLine[controller.index]}",
                      style: TextStyle(fontSize: 20, fontFamily: 'Rancho'),
                    ),
                    15.heightBox,
                    Text(
                      "${controller.SubTitle[controller.index]}",
                      style: TextStyle(fontSize: 20, fontFamily: 'Rancho'),
                    ),
                    20.heightBox,
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 120, 103, 98),
                      ),
                      onPressed: () {
                        controller.setValue(context);

                        // print(index);
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                        .box
                        .width(context.screenWidth * 0.5)
                        .margin(EdgeInsets.only(top: 20))
                        .make()
                  ],
                ),
              ],
            );
          });
        },
      ),
    );
  }
}

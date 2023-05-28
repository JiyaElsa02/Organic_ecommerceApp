// import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';
import 'dimensions.dart';
import 'icon_widgets.dart';
// import 'package:organic_ecommerce_app/home/app_icon.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("lib/images/veg2.jpg"),
              ),
            ),
          ),
        ),
        Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.shopping_cart_outlined),
                // AppIcon(icon: Icons.arrow_back_ios),
                // AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            )),
        Positioned(
          left: 0,
          right: 0,
          top: 340,
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Garden1"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) {
                            return Icon(
                              Icons.star,
                              color: Colors.green,
                              size: 15,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //need small text widget

                      Text(
                        "1234",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("comments"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      // IconWidget(
                      //     icon: Icons.circle_sharp,
                      //     text: "ssss",
                      //     color: Colors.black38,
                      //     iconColor: Colors.orange),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      IconWidget(
                          icon: Icons.place,
                          text: "1.4km",
                          color: Colors.black38,
                          iconColor: Colors.green),
                      SizedBox(
                        width: 20,
                      ),
                      IconWidget(
                          icon: Icons.timer,
                          text: "ssss",
                          color: Colors.black38,
                          iconColor: Colors.red),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Introduce',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      'Ogranic organic Ogranic organic Ogranic organic Ogranic organic.  lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.................'),
                  // Container(
                  //   height: 100,
                  //   padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  //   decoration: BoxDecoration(
                  //     // borderRadius: BorderRadius.circular(20),
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Row(
                    children: [
                      // IconWidget(
                      //     icon: Icons.circle_sharp,
                      //     text: "ssss",
                      //     color: Colors.black38,
                      //     iconColor: Colors.orange),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      // IconWidget(
                      //     icon: Icons.place,
                      //     text: "1.4km",
                      //     color: Colors.black38,
                      //     iconColor: Colors.green),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      // IconWidget(
                      //     icon: Icons.timer,
                      //     text: "ssss",
                      //     color: Colors.black38,
                      //     iconColor: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   top: Dimensions.popularFoodImgSize,
            //   child: Container(
            //     padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: Colors.grey,
            //     ),
            //   ),
            // ),
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic_ecommerce_app/home/big_text.dart';
import 'package:organic_ecommerce_app/home/icon_widgets.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pagecontroller = PageController(viewportFraction: .8);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color.fromARGB(255, 187, 197, 200),
      child: PageView.builder(
          itemCount: 6,
          controller: pagecontroller,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? Color(0xFF69c5df)
                  // : Color.fromARGB(255, 117, 52, 135),
                  : Color(0xFF69c5df),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("lib/images/veg2.jpg"))),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 40, right: 40, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(247, 239, 239, 1),
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
                        IconWidget(
                            icon: Icons.circle_sharp,
                            text: "ssss",
                            color: Colors.black38,
                            iconColor: Colors.orange),
                        IconWidget(
                            icon: Icons.circle_sharp,
                            text: "ssss",
                            color: Colors.black38,
                            iconColor: Colors.orange),
                        IconWidget(
                            icon: Icons.circle_sharp,
                            text: "ssss",
                            color: Colors.black38,
                            iconColor: Colors.orange),
                      ],
                    )
                  ],
                ),
              ),
            ))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:organic_ecommerce_app/home/food_page_body.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Kerala',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                        ),
                      ),
// BigText(text: "Bangladesh", color: Colors.green),
                      Row(
                        children: [
                          Text(
                            'Trivandrum',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          // SmallText(text: "Narsingdi" , color: Colors.black54,),
                          Icon(
                            Icons.arrow_drop_down_rounded,
                          ),
                        ],
                      ) // row
                    ],
                  ), // Column

                  Container(
                    width: 45,
                    height: 45,
                    child: Icon(
                      Icons.search,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 119, 207, 122),
                    ), // BoxDecoration
                  ) // Container
                ],
                // FoodPageBody(),
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}

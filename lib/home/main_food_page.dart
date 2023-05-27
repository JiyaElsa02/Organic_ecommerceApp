import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:organic_ecommerce_app/home/food_page_body.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

void signUserOut() {
  FirebaseAuth.instance.signOut();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Color.fromARGB(255, 76, 175, 80),
        title: new Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: new Text(
            "Nirav",
            style: TextStyle(fontSize: 32),
          ),
        ),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Kerala',
                        style: TextStyle(
                          color: Color.fromARGB(255, 76, 175, 80),
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

                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(255, 119, 207, 122),
                      ), // BoxDecoration
                    ),
                  ), // Container
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

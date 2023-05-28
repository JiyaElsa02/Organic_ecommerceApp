import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:organic_ecommerce_app/home/big_text.dart';
import 'package:organic_ecommerce_app/home/dimensions.dart';
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
    return Column(
      children: [
        Container(
          height: 320,
          // color: Color.fromARGB(255, 187, 197, 200),
          child: PageView.builder(
              itemCount: 6,
              controller: pagecontroller,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        //popular food
        SizedBox(
          height: 8,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black26),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 4),
                child: Text(
                  "Vegetable pairing",
                ),
              ),
            ],
          ),
        ),
        //List of vegetables and images
        Container(
          height: 300, // Remove this line
          child: SingleChildScrollView(
            // Wrap with SingleChildScrollView
            child: ListView.builder(
              shrinkWrap: true, // Add shrinkWrap property
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      EdgeInsets.only(top: 10, left: 28, right: 20, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                          image: DecorationImage(
                            image: AssetImage("lib/images/veg2.jpg"),
                          ),
                        ),
                      ),
                      //text container
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Colors.white10,
                            ),
                            // child: Padding(
                            //
                            //   padding: EdgeInsets.all(.5),

                            // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,

                              children: [
                                // tyle: TextStyle(fontSize: 20)
                                Text(
                                  'Organic Vegetable1',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "organic organicorganic organic",
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    IconWidget(
                                        icon: Icons.star,
                                        text: "Bestseller",
                                        color: Colors.black38,
                                        iconColor: Colors.yellow),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    IconWidget(
                                        icon: Icons.place,
                                        text: "1.0km",
                                        color: Colors.black38,
                                        iconColor: Colors.green),
                                    SizedBox(
                                      height: 5,
                                    ),

                                     ],
                                ),

                                    Row(
                                      children: [
                                         IconWidget(
                                        icon: Icons.timer,
                                        text: "30 Mins",
                                        color: Colors.black38,
                                        iconColor: Colors.red),
                                      ],
                                    )
                                   
                                 
                              ],
                            ),
                          ),
                        ),
                      ),
                      // ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
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
                  fit: BoxFit.cover, image: AssetImage("lib/images/garden.jpeg"))),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
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
                        // IconWidget(
                        //     icon: Icons.circle_sharp,
                        //     text: "ssss",
                        //     color: Colors.black38,
                        //     iconColor: Colors.orange),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        IconWidget(
                            icon: Icons.star,
                            text: "Bestseller",
                            color: Colors.black38,
                            iconColor: Colors.yellow),
                        SizedBox(
                          width: 2,
                        ),
                        IconWidget(
                            icon: Icons.place,
                            text: "1km",
                            color: Colors.black38,
                            iconColor: Colors.green),
                        SizedBox(
                          width: 2,
                        ),
                        IconWidget(
                            icon: Icons.timer,
                            text: "ssss",
                            color: Colors.black38,
                            iconColor: Colors.red),
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

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:organic_ecommerce_app/home/big_text.dart';
// import 'package:organic_ecommerce_app/home/dimensions.dart';
// import 'package:organic_ecommerce_app/home/icon_widgets.dart';

// class FoodPageBody extends StatefulWidget {
//   const FoodPageBody({super.key});

//   @override
//   State<FoodPageBody> createState() => _FoodPageBodyState();
// }

// class _FoodPageBodyState extends State<FoodPageBody> {
//   PageController pagecontroller = PageController(viewportFraction: .8);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 320,
//           // color: Color.fromARGB(255, 187, 197, 200),
//           child: PageView.builder(
//               itemCount: 6,
//               controller: pagecontroller,
//               itemBuilder: (context, position) {
//                 return _buildPageItem(position);
//               }),
//         ),
//         //popular food
//         SizedBox(
//           height: 10,
//         ),
//         Container(
//           margin: EdgeInsets.only(left: 20),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               BigText(text: "Popular"),
//               SizedBox(
//                 width: 10,
//               ),
//               Container(
//                 margin: const EdgeInsets.only(bottom: 3),
//                 child: BigText(text: ".", color: Colors.black26),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//               Container(
//                 margin: const EdgeInsets.only(bottom: 2),
//                 child: Text(
//                   "Vegetable pairing",
//                 ),
//               ),
//             ],
//           ),
//         ),
//         //List of vegetables and images
//         Container(
//           height: 320, // Remove this line
//           child: SingleChildScrollView(
//             // Wrap with SingleChildScrollView
//             child: ListView.builder(
//               shrinkWrap: true, // Add shrinkWrap property
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 10,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin:
//                       EdgeInsets.only(top: 10, left: 28, right: 20, bottom: 10),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 120,
//                         height: 120,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.white38,
//                           image: DecorationImage(
//                             image: AssetImage("lib/images/veg2.jpg"),
//                           ),
//                         ),
//                       ),
//                       //text container
//                       Expanded(
//                         child: Padding(
//                           padding: EdgeInsets.only(left: 10, right: 10),
//                           child: Container(
//                             height: 100,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                 topRight: Radius.circular(20),
//                                 bottomRight: Radius.circular(20),
//                               ),
//                               color: Colors.white10,
//                             ),
//                             // child: Padding(
//                             //
//                             //   padding: EdgeInsets.all(.5),

//                             // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
//                             child: Column(
//                               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//                               children: [
//                                 // tyle: TextStyle(fontSize: 20)
//                                 Text(
//                                   'Organic Tomatoes',
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                                 Text(
//                                   "bvhvcgsfmkhfkhdeou organic organicorganic organic",
//                                 ),
//                                 Row(
//                                   children: [
//                                     IconWidget(
//                                         icon: Icons.place,
//                                         text: "1.0km",
//                                         color: Colors.black38,
//                                         iconColor: Colors.green),
//                                     SizedBox(
//                                       width: 20,
//                                     ),
//                                     IconWidget(
//                                         icon: Icons.timer,
//                                         text: "30 Mins",
//                                         color: Colors.black38,
//                                         iconColor: Colors.red),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       // ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   Widget _buildPageItem(int index) {
//     return Stack(
//       children: [
//         Container(
//           height: 220,
//           margin: EdgeInsets.only(left: 10, right: 10),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//               color: index.isEven
//                   ? Color(0xFF69c5df)
//                   // : Color.fromARGB(255, 117, 52, 135),
//                   : Color(0xFF69c5df),
//               image: DecorationImage(
//                   fit: BoxFit.cover, image: AssetImage("lib/images/veg2.jpg"))),
//         ),
//         Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               height: 120,
//               margin: EdgeInsets.only(left: 40, right: 40, bottom: 20),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Color.fromRGBO(247, 239, 239, 1),
//               ),
//               child: Container(
//                 padding: EdgeInsets.only(top: 10, left: 15, right: 15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     BigText(text: "Garden1"),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: [
//                         Wrap(
//                           children: List.generate(
//                             5,
//                             (index) {
//                               return Icon(
//                                 Icons.star,
//                                 color: Colors.green,
//                                 size: 15,
//                               );
//                             },
//                           ),
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         //need small text widget

//                         Text(
//                           "1234",
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text("comments"),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         // IconWidget(
//                         //     icon: Icons.circle_sharp,
//                         //     text: "ssss",
//                         //     color: Colors.black38,
//                         //     iconColor: Colors.orange),
//                         // SizedBox(
//                         //   width: 20,
//                         // ),
//                         IconWidget(
//                             icon: Icons.place,
//                             text: "1.4km",
//                             color: Colors.black38,
//                             iconColor: Colors.green),
//                         SizedBox(
//                           width: 20,
//                         ),
//                         IconWidget(
//                             icon: Icons.timer,
//                             text: "ssss",
//                             color: Colors.black38,
//                             iconColor: Colors.red),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ))
//       ],
//     );
//   }
// }

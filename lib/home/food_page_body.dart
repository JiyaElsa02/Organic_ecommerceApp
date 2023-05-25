import 'package:flutter/cupertino.dart';

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
      color: Color(0xFF69c5df),
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
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? Color(0xFF69c5df)
                  // : Color.fromARGB(255, 117, 52, 135),
                  : Color(0xFF69c5df),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("lib/images/veg.jpg"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(247, 239, 239, 1),
            ),
          ),
        )
      ],
    );
  }
}

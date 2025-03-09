import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen_1 extends StatefulWidget {
  const Screen_1({Key? key}) : super(key: key);

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  int selected = 0;
  int like_selected = 0;
  List name = [
    "Burger",
    "Sushi",
    "Pizza",
  ];
  List name2 = [
    "15 min",
    "30 min",
    "20 min",
  ];
  List imagess = [
    'assets/images/burger_3.png',
    'assets/images/sushi.png',
    'assets/images/pizza.png',
  ];
  List imagess2 = [
    'assets/images/noodels.png',
    'assets/images/pasta.png',
    'assets/images/salad.png',
  ];
  List name3 = [
    "Noodles",
    "Pasta",
    "Salad",
  ];
  List name4 = [
    "NYC Pizza",
    "John's Burgers",
    "Italian Pasta",
  ];
  List imagess3 = [
    'assets/images/pizza_2.jpg',
    'assets/images/burger_2.webp',
    'assets/images/pasta_2.webp',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 35,
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Matt",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/profile_man.webp'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Stack(
                  children: [
                    Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                          child: Text(
                        "East 42nd st, new york",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 28,
                      child: Icon(
                        Icons.location_pin,
                        color: Colors.white,
                        size: 28,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/zomato.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/kfc.jpg'),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage('assets/images/mc donals.webp'),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: selected == index
                                  ? Colors.orange
                                  : Colors.grey,
                            ),
                          )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 2),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 150,
                  child: PageView(
                    onPageChanged: (value) {
                      setState(() {
                        selected = value;
                      });
                    },
                    children: [
                      Row(
                        children: List.generate(
                            3,
                            (index) => Container(
                                  height: 150,
                                  width: 108,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Image(
                                          image: AssetImage(imagess[index]),
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      Text(
                                        name[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        name2[index],
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange),
                                      ),
                                    ],
                                  ),
                                )),
                      ),
                      Row(
                        children: List.generate(
                            3,
                            (index) => Container(
                                  height: 150,
                                  width: 108,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Image(
                                          image: AssetImage(imagess2[index]),
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      Text(
                                        name3[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        name2[index],
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange),
                                      ),
                                    ],
                                  ),
                                )),
                      ),
                      Row(
                        children: List.generate(
                            3,
                            (index) => Container(
                                  height: 150,
                                  width: 108,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Image(
                                          image: AssetImage(imagess2[index]),
                                          height: 100,
                                          width: 100,
                                        ),
                                      ),
                                      Text(
                                        name3[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        name2[index],
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange),
                                      ),
                                    ],
                                  ),
                                )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              radius: 3,
                              backgroundColor: selected == index
                                  ? Colors.orange
                                  : Colors.grey,
                            ),
                          )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Near You",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.orange, width: 2),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: AssetImage(imagess3[index]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5),
                                        )),
                                    child: LikeBtn(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                name4[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LikeBtn extends StatefulWidget {
  const LikeBtn({Key? key}) : super(key: key);

  @override
  State<LikeBtn> createState() => _LikeBtnState();
}

class _LikeBtnState extends State<LikeBtn> {
  bool like_selected = true;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: InkResponse(
          onTap: () {
            setState(() {
              like_selected = !like_selected;
            });
          },
          child: like_selected == false
              ? Icon(
                  Icons.favorite,
                  color: Colors.orange.shade400,
                  size: 20,
                )
              : Icon(
                  Icons.favorite_outline,
                  color: Colors.orange.shade400,
                  size: 20,
                )),
    );
  }
}

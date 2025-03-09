import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen_2 extends StatefulWidget {
  const Screen_2({Key? key}) : super(key: key);

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  int selected = 0;
  List name = [
    "All",
    "Burger",
    "Pizza",
    "Sushi",
    "Thai",
    "Pasta",
    "salad",
  ];
  List Mapp = [
    {
      'image': 'assets/images/sushi.png',
      'title': 'Pure sushi',
      'rating': '4.5',
      'time': '20 min',
      'subtitle': 'sushi',
    },
    {
      'image': 'assets/images/burger_2.webp',
      'title': 'Mc burger',
      'rating': '4.9',
      'time': '30 min',
      'subtitle': 'Mc',
    },
    {
      'image': 'assets/images/pasta.png',
      'title': 'Teasty Pasta',
      'rating': '4.2',
      'time': '25 min',
      'subtitle': 'Teasty',
    },
    {
      'image': 'assets/images/pizza.png',
      'title': 'Italian Pizaa',
      'rating': '4.4',
      'time': '35 min',
      'subtitle': 'Pizza',
    },
    {
      'image': 'assets/images/pasta.png',
      'title': 'Teasty Pasta',
      'rating': '4.2',
      'time': '25 min',
      'subtitle': 'Teasty',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 245,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2.2,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "321",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Restaurants",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 13,
                          child: Text(
                            "0",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Filters",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(
                      itemCount: name.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: selected == index
                                        ? Colors.black
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(120),
                                    border: Border.all(color: Colors.black)),
                                child: Center(
                                    child: Text(
                                  name[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: selected == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                )),
                              ),
                            ));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return index == 2
                        ? Container(
                            height: 70,
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Get 10%",
                                  style: TextStyle(fontSize: 25),
                                ),
                                Text(
                                  "Off Code",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  image: AssetImage('assets/images/salad.png'),
                                  height: 75,
                                  width: 75,
                                )
                              ],
                            ),
                          )
                        : Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  Mapp[index]['image']))),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(5),
                                                topLeft: Radius.circular(15),
                                              )),
                                          child: LikeBtn(),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Text(
                                            Mapp[index]['title'],
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_border,
                                              color: Colors.orange,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(Mapp[index]['rating']),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.watch_later_outlined,
                                              color: Colors.orange,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(Mapp[index]['time']),
                                            SizedBox(
                                              width: 90,
                                            ),
                                            Text(
                                              Mapp[index]['subtitle'],
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 1,
                      color: Colors.black,
                    );
                  },
                  itemCount: 5),
            )
          ],
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

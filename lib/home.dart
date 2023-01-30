import 'package:flutter/material.dart';
import 'package:log_demo/detail.dart';
import 'package:log_demo/profile.dart';
import 'package:log_demo/textStyle.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<Map> pizza = [
    {
      'img': 'assets/food/pizza/pizza.png',
      'name': 'Capricciosa Pizza',
      'Price': 140
    },
    {
      'img': 'assets/food/pizza/p2.png',
      'name': 'vegetable Pizza',
      'Price': 150
    },
    {
      'img': 'assets/food/pizza/p1.png',
      'name': 'Grazianos Pizza',
      'Price': 200
    },
    {
      'img': 'assets/food/pizza/p4.png',
      'name': 'cheese loaded Pizza',
      'Price': 250
    },
    {'img': 'assets/food/pizza/p5.png', 'name': 'Classic Pizza', 'Price': 200},
    {
      'img': 'assets/food/pizza/p6.jpeg',
      'name': 'Hawaiian Pizza',
      'Price': 300
    },
    {
      'img': 'assets/food/pizza/p9.png',
      'name': 'Pepperoni Pizza',
      'Price': 250
    },
  ];

  List<Map> burger = [
    {
      'img': 'assets/food/burger/burgur.png',
      'name': 'cheese ham burger',
      'Price': 35
    },
    {
      'img': 'assets/food/burger/b1.png',
      'name': 'alloo ticki burger',
      'Price': 100
    },
    {'img': 'assets/food/burger/b3.png', 'name': 'veg burger', 'Price': 150},
    {
      'img': 'assets/food/burger/b4.png',
      'name': 'chocolate burger',
      'Price': 300
    },
    {
      'img': 'assets/food/burger/b5.png',
      'name': 'Classic burger',
      'Price': 150
    },
    {'img': 'assets/food/burger/b6.png', 'name': 'meat burger', 'Price': 350},
    {
      'img': 'assets/food/burger/b8.png',
      'name': 'double loaded burger',
      'Price': 350
    },
  ];

  List<Map> momos = [
    {
      'img': 'assets/food/momos/momes.png',
      'name': 'classic momos',
      'Price': 15
    },
    {'img': 'assets/food/momos/m1.png', 'name': 'chocolate momos', 'Price': 20},
    {'img': 'assets/food/momos/m3.png', 'name': 'air fried momos', 'Price': 35},
    {'img': 'assets/food/momos/m4.png', 'name': 'fried momos', 'Price': 25},
    {
      'img': 'assets/food/momos/m5.jpeg',
      'name': 'multi flavor momos',
      'Price': 40
    }
  ];

  List<Map> panipuri = [
    {
      'img': 'assets/food/panipuri/panipuri.jpg',
      'name': 'classic panipuri',
      'Price': 20
    },
    {
      'img': 'assets/food/panipuri/pp1.jpeg',
      'name': 'dahi panipuri',
      'Price': 25
    },
    {
      'img': 'assets/food/panipuri/pp4.png',
      'name': 'fudina panipuri',
      'Price': 15
    },
    {
      'img': 'assets/food/panipuri/pp6.png',
      'name': 'chocolate panipuri',
      'Price': 35
    },
    {
      'img': 'assets/food/panipuri/pp7.png',
      'name': 'cheese bheal panipuri',
      'Price': 25
    },
    {'img': 'assets/food/panipuri/pp8.png', 'name': 'savepuri', 'Price': 20},
  ];

  List<Map> sandwich = [
    {
      'img': 'assets/food/sandwich/s1.jpeg',
      'name': 'veg sandwich',
      'Price': 25
    },
    {
      'img': 'assets/food/sandwich/s3.png',
      'name': 'grilled sandwich',
      'Price': 30
    },
    {
      'img': 'assets/food/sandwich/s4.png',
      'name': 'paneer sandwich',
      'Price': 30
    },
    {
      'img': 'assets/food/sandwich/s5.png',
      'name': 'vagetable sandwich',
      'Price': 20
    },
    {
      'img': 'assets/food/sandwich/s6.jpg',
      'name': 'toasted sandwich',
      'Price': 25
    },
    {
      'img': 'assets/food/sandwich/s8.png',
      'name': 'cheese sandwich',
      'Price': 30
    },
  ];

  List<Map> colddrink = [
    {
      'img': 'assets/food/colddrink/colddrink.jpeg',
      'name': 'beer',
      'Price': 35
    },
    {'img': 'assets/food/colddrink/c2.png', 'name': 'coca cola', 'Price': 15},
    {'img': 'assets/food/colddrink/c3.png', 'name': 'sprite', 'Price': 10},
    {'img': 'assets/food/colddrink/c4.png', 'name': 'pepsi', 'Price': 15},
    {'img': 'assets/food/colddrink/c5.png', 'name': ' fanta', 'Price': 10},
    {'img': 'assets/food/colddrink/c6.png', 'name': 'thums up', 'Price': 10},
  ];
  var grid = gridview(
    lst: [],
  );
  int curIndex = 0;

  @override
  void initState() {
    super.initState();
    grid = gridview(lst: pizza);
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Fast Food",
            style: headStyle(color),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          backgroundColor: Color(0xFF3F4041),
          elevation: 15,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " ",
                  style: myStyle(),
                ),
              ),
              Text(
                "",
                style: myStyle(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width * .006,
                  color: Colors.white60,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => profile(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Profile",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Search ",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Orders",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.currency_rupee,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Discount",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.people,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Refer & Earn",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "Cantact Us",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.contact_mail_outlined,
                        color: color,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "About Us",
                        style: myStyle(),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: curIndex,
            onTap: (index) => setState(() => curIndex = index),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_shopping_cart), label: "Add to Cart")
            ]),
        backgroundColor: Color(0xFF3F4041),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.001,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.001,
              color: Colors.white60,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          grid = gridview(
                            lst: pizza,
                          );
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/food/pizza/pizza.png'),
                            backgroundColor: Colors.black,
                            radius: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Pizza",
                        style: myStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          grid = gridview(
                            lst: burger,
                          );
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/food/burger/burgur.png'),
                            backgroundColor: Colors.black,
                            radius: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Burger",
                        style: myStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          grid = gridview(lst: momos);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/food/momos/momes.png'),
                            backgroundColor: Colors.black,
                            radius: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Momos",
                        style: myStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          grid = gridview(lst: panipuri);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/food/panipuri/panipuri.jpg'),
                            backgroundColor: Colors.black,
                            radius: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Panipuri",
                        style: myStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          grid = gridview(lst: sandwich);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/food/sandwich/s1.jpeg'),
                            backgroundColor: Colors.black,
                            radius: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Sandwich",
                        style: myStyle(),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          grid = gridview(lst: colddrink);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/food/colddrink/colddrink.jpeg'),
                            backgroundColor: Colors.black,
                            radius: 40,
                          ),
                        ),
                      ),
                      Text(
                        "Cold Drink",
                        style: myStyle(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .001,
              color: Colors.white60,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.001,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .700,
                child: grid)
          ],
        ),
      ),
    );
  }
}

class gridview extends StatelessWidget {
  final List<Map> lst;

  const gridview({super.key, required this.lst});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Detail(lst[index])));
            },
            child: Container(
              //height: MediaQuery.of(context).size.height * .40,
              decoration: BoxDecoration(
                  color: Color(0xFF232227),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 8),
                  ]),
              child: Column(
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * .18,
                      width: MediaQuery.of(context).size.height * .3,
                      child: Image.asset(lst[index]['img'])),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          lst[index]['name'],
                          style: myStyle1(),
                        ),
                        Text(
                          ' \₹' + lst[index]['Price'].toString(),
                          style: myStyle1(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: lst.length,
    );
  }
}

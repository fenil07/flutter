import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Map> data=[
      {
        'name':'1',
        'image':'https://img4.nbstatic.in/tr:w-500/5bcdbd8d4cedfd000dcb65c1.jpg',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'2',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ28X-Y3SOVVk8Gpu1iM8MxRiIhgCrN5IT85w&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'3',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFvYL_zCJsRbk8R5KBdKwPBBLcvbwspt95tY9dUNwkz-HgIg2tgrBoRM6t4JV9iP0QXL0&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'4',
        'image':'https://i.redd.it/tgtjpc4lfl451.png',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'5',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPE9Gj7S6OxsDbu0xmctchHtpsPs_TM8GklA&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'6',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiwG6hELXSeWHEQzcoeDGmWz0Z1v0Z_HdLkQ&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'7',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd4_56MFgmKN9pqwlznHyjZfLkiPqoV3mAMwnjCH1zY_6-SKslD_n9JYi024E0v-_-Pl8&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'8',
        'image':'https://c8.alamy.com/comp/E08HY8/chole-bhature-chickpea-curry-with-fried-breads-punjabi-breakfast-dish-E08HY8.jpg',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'9',
        'image':'https://cdn.shopify.com/s/files/1/0524/2113/2440/articles/vada_pav.jpg?v=1667301121',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'10',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTefWVnRSpxt-jX-wTTR7w1sRBw2D0EAuGmDw&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'11',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFs1p4cE-yNT9BhXF7lM57xcJrF5h4ITT47g&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'12',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMO2dTe0iWrrjEZzvq09vueTRzWRKgdLKeWA&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'13',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO_iUGTpJOAd4Yd3E3GvUAARqeRTezllnAzA&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'14',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJJWBbaW1FwU9bZeKdhHqAtNpZZKEITjcS1w&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'15',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5KG-ilwxiw9w1q6pRncRbT_xJgb2SqP5rFg&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'16',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2NnmGHZYgHc7beDfMZNSyeGSvtRh3ZtSz8LebqPpVlD0WrJ0UazhBu6VgiP1hgsD6J6A&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'17',
        'image':'https://thebigmansworld.com/wp-content/uploads/2021/04/keto-chocolate-milkshake4.jpeg',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'18',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzFKLvJIB8PLFiP6oGLmrcUTAlDE1bVUqXGw&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'19',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSni0huFxgm58MAD3Fx8OTgfbVyQ4Qjad643g&usqp=CAU',
        'des':'cdnsvijnvjidv'
      },
      {
        'name':'20',
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq4JydedxIfozy8Vf1DK0hUASzpDd_SIVsRfLR7L925SdOD2IhReoKu2lMbxX0NFcJVeM&usqp=CAU',
        'des':'cdnsvijnvjidv'
      }
    ];
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2/*,mainAxisSpacing: 11,crossAxisSpacing: 11*/),
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(data[index]['image']),
              ),
              )),
            ],
          )
        );
      },itemCount: data.length,),
    );
  }
}

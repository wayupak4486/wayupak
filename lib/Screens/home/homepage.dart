import 'package:flutter/material.dart';

import 'shoes.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title:  const Text("WAYUPAK SHOP", style: TextStyle(color: Colors.red, fontSize: 50),),
        // brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none, color: Colors.red,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, color: Colors.red,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Center(
                          child: Text("Sneakers", style: TextStyle(fontSize: 17),),
                        ),
                      )),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              makeItem(image: 'assets/images/four.jpg', tag: 'red', context: context),
              makeItem(image: 'assets/images/six.jpg', tag: 'blue', context: context),
              makeItem(image: 'assets/images/three.jpg', tag: 'green', context: context),
              makeItem(image: 'assets/images/five.jpg', tag: 'black', context: context),
              makeItem(image: 'assets/images/two.jpg', tag: 'yellow', context: context),
              makeItem(image: 'assets/images/one.jpg', tag: 'orange', context: context),


            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image: image, tag: tag,)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 10,
                    offset: const Offset(0, 10)
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Promotion!!", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),


                      ],
                    ),
                  ),
                 Container(
                    width: 35,
                    height: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: const Center(
                      child: Icon(Icons.favorite_border, size: 30, color: Colors.pink,),
                    ),
                  )
                ],
              ),
              const Text("In stock", style: TextStyle(color: Colors.black87, fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}

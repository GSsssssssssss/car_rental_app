import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        
      //   backgroundColor: Color.fromARGB(255, 23, 12, 12),
      //   actions: <Widget>[
      //     IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back))
      //   ],
      // ),
      body: SafeArea(child: Column(
        children: [
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Color.fromARGB(153, 126, 5, 5)),
                  child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_sharp))),
              ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Color.fromARGB(153, 126, 5, 5)),
                    child: IconButton(onPressed: () {}, icon: const Icon(Icons.display_settings_rounded))),
                )
            ],
          ),
          Container(
            child: Image(image: AssetImage("assets/mock1.png")),
          ),
          Text('RENT A CAR'),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 120,
                width: 120,
                // color: Colors.blueGrey,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 199, 186, 186),
                ),

                child: Column(
                  children: [
                    SizedBox(height: 5.0,),
                    SizedBox(height: 60,
                             width: 60,
                      child: Image(image: AssetImage("assets/profile.png"), )),
                    Text('Mark Jane'),
                    Text('1550')
                  ],
                ),),
                Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
                child: Image(image: AssetImage("assets/profile.png")),),
                Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
                child: Image(image: AssetImage("assets/profile.png")),),
            ],
          )


        ],
      )),
    );
  }
}